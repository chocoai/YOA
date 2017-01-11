using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using CKSource.CKFinder.Connector.Config;
using CKSource.CKFinder.Connector.Core.Builders;
using CKSource.CKFinder.Connector.Core.Logs;
using CKSource.CKFinder.Connector.Host.Owin;
using CKSource.CKFinder.Connector.Logs.NLog;
using CKSource.CKFinder.Connector.KeyValue.EntityFramework;
using CKSource.FileSystem.Local;
using Microsoft.Owin;
using Owin;

[assembly: OwinStartup(typeof(Startup))]

public class Startup {
    public void Configuration(IAppBuilder app) {
        ConfigureAuth(app);
        /*
         * If you installed CKSource.CKFinder.Connector.Logs.NLog you can start the logger:
         * LoggerManager.LoggerAdapterFactory = new NLogLoggerAdapterFactory();
         * Keep in mind that the logger should be initialized only once and before any other
         * CKFinder method is invoked.
         */
        LoggerManager.LoggerAdapterFactory = new NLogLoggerAdapterFactory();
        /*
         * Register the "local" type backend file system.
         */
        FileSystemFactory.RegisterFileSystem<LocalStorage>();
        /*
         * Map the CKFinder connector service under a given path. By default the CKFinder JavaScript
         * client expect the ASP.NET connector to be accessible under the "/ckfinder/connector" route.
         */
        app.Map("/ckfinder/connector", SetupConnector);
    }

    // 有关配置身份验证的详细信息，请访问 http://go.microsoft.com/fwlink/?LinkId=301864
    public void ConfigureAuth(IAppBuilder app) {
        //// 使应用程序可以使用 Cookie 来存储已登录用户的信息
        //app.UseCookieAuthentication(new CookieAuthenticationOptions {
        //    AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
        //    LoginPath = new PathString("/Account/Login")
        //});
        //// Use a cookie to temporarily store information about a user logging in with a third party login provider
        //app.UseExternalSignInCookie(DefaultAuthenticationTypes.ExternalCookie);

        // 取消注释以下行可允许使用第三方登录提供程序登录
        //app.UseMicrosoftAccountAuthentication(
        //    clientId: "",
        //    clientSecret: "");

        //app.UseTwitterAuthentication(
        //   consumerKey: "",
        //   consumerSecret: "");

        //app.UseFacebookAuthentication(
        //   appId: "",
        //   appSecret: "");

        //// 支持使用 google 账户登录
        //app.UseGoogleAuthentication();
    }

    private static void SetupConnector(IAppBuilder app) {
        /*
         * Create a connector instance using ConnectorBuilder. The call to the LoadConfig() method
         * will configure the connector using CKFinder configuration options defined in Web.config.
         */
        var connectorFactory = new OwinConnectorFactory();
        var connectorBuilder = new ConnectorBuilder();
        /*
         * Create an instance of authenticator implemented in the previous step.
         */
        var customAuthenticator = new CustomCKFinderAuthenticator();
        connectorBuilder
            /*
             * Provide the global configuration.
             *
             * If you installed CKSource.CKFinder.Connector.Config you may load static configuration
             * from XML:
             * connectorBuilder.LoadConfig();
             */
            .LoadConfig()
            .SetAuthenticator(customAuthenticator)
            .SetRequestConfiguration(
                (request, config) => {
                        /*
                         * Configure settings per request.
                         *
                         * The minimal configuration has to include at least one backend, one resource type
                         * and one ACL rule.
                         *
                         * For example:
                         * config.AddBackend("default", new LocalStorage(@"C:\files"));
                         * config.AddResourceType("images", builder => builder.SetBackend("default", "images"));
                         * config.AddAclRule(new AclRule(
                         *     new StringMatcher("*"),
                         *     new StringMatcher("*"),
                         *     new StringMatcher("*"),
                         *     new Dictionary<Permission, PermissionType> { { Permission.All, PermissionType.Allow } }));
                         *
                         * If you installed CKSource.CKFinder.Connector.Config, you may load the static configuration
                         * from XML:
                         * config.LoadConfig();
                         *
                         * If you installed CKSource.CKFinder.Connector.KeyValue.EntityFramework, you may enable caching:
                         * config.SetKeyValueStoreProvider(
                         *     new EntityFrameworkKeyValueStoreProvider("CKFinderCacheConnection"));
                         */
                }
            );
        /*
         * Build the connector middleware.
         */
        var connector = connectorBuilder
            .Build(connectorFactory);
        /*
         * Add the CKFinder connector middleware to the web application pipeline.
         */
        app.UseConnector(connector);
    }
}
