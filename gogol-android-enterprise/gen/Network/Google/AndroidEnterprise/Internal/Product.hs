{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.AndroidEnterprise.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.AndroidEnterprise.Internal.Product
  ( -- * Administrator
    Administrator (..),
    newAdministrator,

    -- * AdministratorWebToken
    AdministratorWebToken (..),
    newAdministratorWebToken,

    -- * AdministratorWebTokenSpec
    AdministratorWebTokenSpec (..),
    newAdministratorWebTokenSpec,

    -- * AdministratorWebTokenSpecManagedConfigurations
    AdministratorWebTokenSpecManagedConfigurations (..),
    newAdministratorWebTokenSpecManagedConfigurations,

    -- * AdministratorWebTokenSpecPlaySearch
    AdministratorWebTokenSpecPlaySearch (..),
    newAdministratorWebTokenSpecPlaySearch,

    -- * AdministratorWebTokenSpecPrivateApps
    AdministratorWebTokenSpecPrivateApps (..),
    newAdministratorWebTokenSpecPrivateApps,

    -- * AdministratorWebTokenSpecStoreBuilder
    AdministratorWebTokenSpecStoreBuilder (..),
    newAdministratorWebTokenSpecStoreBuilder,

    -- * AdministratorWebTokenSpecWebApps
    AdministratorWebTokenSpecWebApps (..),
    newAdministratorWebTokenSpecWebApps,

    -- * AdministratorWebTokenSpecZeroTouch
    AdministratorWebTokenSpecZeroTouch (..),
    newAdministratorWebTokenSpecZeroTouch,

    -- * AppRestrictionsSchema
    AppRestrictionsSchema (..),
    newAppRestrictionsSchema,

    -- * AppRestrictionsSchemaChangeEvent
    AppRestrictionsSchemaChangeEvent (..),
    newAppRestrictionsSchemaChangeEvent,

    -- * AppRestrictionsSchemaRestriction
    AppRestrictionsSchemaRestriction (..),
    newAppRestrictionsSchemaRestriction,

    -- * AppRestrictionsSchemaRestrictionRestrictionValue
    AppRestrictionsSchemaRestrictionRestrictionValue (..),
    newAppRestrictionsSchemaRestrictionRestrictionValue,

    -- * AppState
    AppState (..),
    newAppState,

    -- * AppUpdateEvent
    AppUpdateEvent (..),
    newAppUpdateEvent,

    -- * AppVersion
    AppVersion (..),
    newAppVersion,

    -- * ApprovalUrlInfo
    ApprovalUrlInfo (..),
    newApprovalUrlInfo,

    -- * AuthenticationToken
    AuthenticationToken (..),
    newAuthenticationToken,

    -- * AutoInstallConstraint
    AutoInstallConstraint (..),
    newAutoInstallConstraint,

    -- * AutoInstallPolicy
    AutoInstallPolicy (..),
    newAutoInstallPolicy,

    -- * ConfigurationVariables
    ConfigurationVariables (..),
    newConfigurationVariables,

    -- * Device
    Device (..),
    newDevice,

    -- * DeviceReport
    DeviceReport (..),
    newDeviceReport,

    -- * DeviceReportUpdateEvent
    DeviceReportUpdateEvent (..),
    newDeviceReportUpdateEvent,

    -- * DeviceState
    DeviceState (..),
    newDeviceState,

    -- * DevicesListResponse
    DevicesListResponse (..),
    newDevicesListResponse,

    -- * Enterprise
    Enterprise (..),
    newEnterprise,

    -- * EnterpriseAccount
    EnterpriseAccount (..),
    newEnterpriseAccount,

    -- * EnterprisesListResponse
    EnterprisesListResponse (..),
    newEnterprisesListResponse,

    -- * EnterprisesSendTestPushNotificationResponse
    EnterprisesSendTestPushNotificationResponse (..),
    newEnterprisesSendTestPushNotificationResponse,

    -- * Entitlement
    Entitlement (..),
    newEntitlement,

    -- * EntitlementsListResponse
    EntitlementsListResponse (..),
    newEntitlementsListResponse,

    -- * GroupLicense
    GroupLicense (..),
    newGroupLicense,

    -- * GroupLicenseUsersListResponse
    GroupLicenseUsersListResponse (..),
    newGroupLicenseUsersListResponse,

    -- * GroupLicensesListResponse
    GroupLicensesListResponse (..),
    newGroupLicensesListResponse,

    -- * Install
    Install (..),
    newInstall,

    -- * InstallFailureEvent
    InstallFailureEvent (..),
    newInstallFailureEvent,

    -- * InstallsListResponse
    InstallsListResponse (..),
    newInstallsListResponse,

    -- * KeyedAppState
    KeyedAppState (..),
    newKeyedAppState,

    -- * LocalizedText
    LocalizedText (..),
    newLocalizedText,

    -- * MaintenanceWindow
    MaintenanceWindow (..),
    newMaintenanceWindow,

    -- * ManagedConfiguration
    ManagedConfiguration (..),
    newManagedConfiguration,

    -- * ManagedConfigurationsForDeviceListResponse
    ManagedConfigurationsForDeviceListResponse (..),
    newManagedConfigurationsForDeviceListResponse,

    -- * ManagedConfigurationsForUserListResponse
    ManagedConfigurationsForUserListResponse (..),
    newManagedConfigurationsForUserListResponse,

    -- * ManagedConfigurationsSettings
    ManagedConfigurationsSettings (..),
    newManagedConfigurationsSettings,

    -- * ManagedConfigurationsSettingsListResponse
    ManagedConfigurationsSettingsListResponse (..),
    newManagedConfigurationsSettingsListResponse,

    -- * ManagedProperty
    ManagedProperty (..),
    newManagedProperty,

    -- * ManagedPropertyBundle
    ManagedPropertyBundle (..),
    newManagedPropertyBundle,

    -- * NewDeviceEvent
    NewDeviceEvent (..),
    newNewDeviceEvent,

    -- * NewPermissionsEvent
    NewPermissionsEvent (..),
    newNewPermissionsEvent,

    -- * Notification
    Notification (..),
    newNotification,

    -- * NotificationSet
    NotificationSet (..),
    newNotificationSet,

    -- * PageInfo
    PageInfo (..),
    newPageInfo,

    -- * Permission
    Permission (..),
    newPermission,

    -- * Policy
    Policy (..),
    newPolicy,

    -- * Product
    Product (..),
    newProduct,

    -- * ProductApprovalEvent
    ProductApprovalEvent (..),
    newProductApprovalEvent,

    -- * ProductAvailabilityChangeEvent
    ProductAvailabilityChangeEvent (..),
    newProductAvailabilityChangeEvent,

    -- * ProductPermission
    ProductPermission (..),
    newProductPermission,

    -- * ProductPermissions
    ProductPermissions (..),
    newProductPermissions,

    -- * ProductPolicy
    ProductPolicy (..),
    newProductPolicy,

    -- * ProductSet
    ProductSet (..),
    newProductSet,

    -- * ProductSigningCertificate
    ProductSigningCertificate (..),
    newProductSigningCertificate,

    -- * ProductVisibility
    ProductVisibility (..),
    newProductVisibility,

    -- * ProductsApproveRequest
    ProductsApproveRequest (..),
    newProductsApproveRequest,

    -- * ProductsGenerateApprovalUrlResponse
    ProductsGenerateApprovalUrlResponse (..),
    newProductsGenerateApprovalUrlResponse,

    -- * ProductsListResponse
    ProductsListResponse (..),
    newProductsListResponse,

    -- * ServiceAccount
    ServiceAccount (..),
    newServiceAccount,

    -- * ServiceAccountKey
    ServiceAccountKey (..),
    newServiceAccountKey,

    -- * ServiceAccountKeysListResponse
    ServiceAccountKeysListResponse (..),
    newServiceAccountKeysListResponse,

    -- * SignupInfo
    SignupInfo (..),
    newSignupInfo,

    -- * StoreCluster
    StoreCluster (..),
    newStoreCluster,

    -- * StoreLayout
    StoreLayout (..),
    newStoreLayout,

    -- * StoreLayoutClustersListResponse
    StoreLayoutClustersListResponse (..),
    newStoreLayoutClustersListResponse,

    -- * StoreLayoutPagesListResponse
    StoreLayoutPagesListResponse (..),
    newStoreLayoutPagesListResponse,

    -- * StorePage
    StorePage (..),
    newStorePage,

    -- * TokenPagination
    TokenPagination (..),
    newTokenPagination,

    -- * TrackInfo
    TrackInfo (..),
    newTrackInfo,

    -- * User
    User (..),
    newUser,

    -- * UsersListResponse
    UsersListResponse (..),
    newUsersListResponse,

    -- * VariableSet
    VariableSet (..),
    newVariableSet,

    -- * WebApp
    WebApp (..),
    newWebApp,

    -- * WebAppIcon
    WebAppIcon (..),
    newWebAppIcon,

    -- * WebAppsListResponse
    WebAppsListResponse (..),
    newWebAppsListResponse,
  )
where

import Network.Google.AndroidEnterprise.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | This represents an enterprise admin who can manage the enterprise in the managed Google Play store.
--
-- /See:/ 'newAdministrator' smart constructor.
newtype Administrator = Administrator
  { -- | The admin\'s email address.
    email :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Administrator' with the minimum fields required to make a request.
newAdministrator ::
  Administrator
newAdministrator = Administrator {email = Core.Nothing}

instance Core.FromJSON Administrator where
  parseJSON =
    Core.withObject
      "Administrator"
      (\o -> Administrator Core.<$> (o Core..:? "email"))

instance Core.ToJSON Administrator where
  toJSON Administrator {..} =
    Core.object
      (Core.catMaybes [("email" Core..=) Core.<$> email])

-- | A token authorizing an admin to access an iframe.
--
-- /See:/ 'newAdministratorWebToken' smart constructor.
newtype AdministratorWebToken = AdministratorWebToken
  { -- | An opaque token to be passed to the Play front-end to generate an iframe.
    token :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdministratorWebToken' with the minimum fields required to make a request.
newAdministratorWebToken ::
  AdministratorWebToken
newAdministratorWebToken = AdministratorWebToken {token = Core.Nothing}

instance Core.FromJSON AdministratorWebToken where
  parseJSON =
    Core.withObject
      "AdministratorWebToken"
      ( \o ->
          AdministratorWebToken Core.<$> (o Core..:? "token")
      )

instance Core.ToJSON AdministratorWebToken where
  toJSON AdministratorWebToken {..} =
    Core.object
      (Core.catMaybes [("token" Core..=) Core.<$> token])

-- | Specification for a token used to generate iframes. The token specifies what data the admin is allowed to modify and the URI the iframe is allowed to communiate with.
--
-- /See:/ 'newAdministratorWebTokenSpec' smart constructor.
data AdministratorWebTokenSpec = AdministratorWebTokenSpec
  { -- | Options for displaying the Managed Configuration page.
    managedConfigurations :: (Core.Maybe AdministratorWebTokenSpecManagedConfigurations),
    -- | The URI of the parent frame hosting the iframe. To prevent XSS, the iframe may not be hosted at other URIs. This URI must be https. Use whitespaces to separate multiple parent URIs.
    parent :: (Core.Maybe Core.Text),
    -- | Deprecated. Use PlaySearch.approveApps.
    permission :: (Core.Maybe [AdministratorWebTokenSpec_PermissionItem]),
    -- | Options for displaying the managed Play Search apps page.
    playSearch :: (Core.Maybe AdministratorWebTokenSpecPlaySearch),
    -- | Options for displaying the Private Apps page.
    privateApps :: (Core.Maybe AdministratorWebTokenSpecPrivateApps),
    -- | Options for displaying the Organize apps page.
    storeBuilder :: (Core.Maybe AdministratorWebTokenSpecStoreBuilder),
    -- | Options for displaying the Web Apps page.
    webApps :: (Core.Maybe AdministratorWebTokenSpecWebApps),
    -- | Options for displaying the Zero Touch page.
    zeroTouch :: (Core.Maybe AdministratorWebTokenSpecZeroTouch)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdministratorWebTokenSpec' with the minimum fields required to make a request.
newAdministratorWebTokenSpec ::
  AdministratorWebTokenSpec
newAdministratorWebTokenSpec =
  AdministratorWebTokenSpec
    { managedConfigurations = Core.Nothing,
      parent = Core.Nothing,
      permission = Core.Nothing,
      playSearch = Core.Nothing,
      privateApps = Core.Nothing,
      storeBuilder = Core.Nothing,
      webApps = Core.Nothing,
      zeroTouch = Core.Nothing
    }

instance Core.FromJSON AdministratorWebTokenSpec where
  parseJSON =
    Core.withObject
      "AdministratorWebTokenSpec"
      ( \o ->
          AdministratorWebTokenSpec
            Core.<$> (o Core..:? "managedConfigurations")
            Core.<*> (o Core..:? "parent")
            Core.<*> (o Core..:? "permission" Core..!= Core.mempty)
            Core.<*> (o Core..:? "playSearch")
            Core.<*> (o Core..:? "privateApps")
            Core.<*> (o Core..:? "storeBuilder")
            Core.<*> (o Core..:? "webApps")
            Core.<*> (o Core..:? "zeroTouch")
      )

instance Core.ToJSON AdministratorWebTokenSpec where
  toJSON AdministratorWebTokenSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("managedConfigurations" Core..=)
              Core.<$> managedConfigurations,
            ("parent" Core..=) Core.<$> parent,
            ("permission" Core..=) Core.<$> permission,
            ("playSearch" Core..=) Core.<$> playSearch,
            ("privateApps" Core..=) Core.<$> privateApps,
            ("storeBuilder" Core..=) Core.<$> storeBuilder,
            ("webApps" Core..=) Core.<$> webApps,
            ("zeroTouch" Core..=) Core.<$> zeroTouch
          ]
      )

--
-- /See:/ 'newAdministratorWebTokenSpecManagedConfigurations' smart constructor.
newtype AdministratorWebTokenSpecManagedConfigurations = AdministratorWebTokenSpecManagedConfigurations
  { -- | Whether the Managed Configuration page is displayed. Default is true.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdministratorWebTokenSpecManagedConfigurations' with the minimum fields required to make a request.
newAdministratorWebTokenSpecManagedConfigurations ::
  AdministratorWebTokenSpecManagedConfigurations
newAdministratorWebTokenSpecManagedConfigurations =
  AdministratorWebTokenSpecManagedConfigurations {enabled = Core.Nothing}

instance
  Core.FromJSON
    AdministratorWebTokenSpecManagedConfigurations
  where
  parseJSON =
    Core.withObject
      "AdministratorWebTokenSpecManagedConfigurations"
      ( \o ->
          AdministratorWebTokenSpecManagedConfigurations
            Core.<$> (o Core..:? "enabled")
      )

instance
  Core.ToJSON
    AdministratorWebTokenSpecManagedConfigurations
  where
  toJSON
    AdministratorWebTokenSpecManagedConfigurations {..} =
      Core.object
        ( Core.catMaybes
            [("enabled" Core..=) Core.<$> enabled]
        )

--
-- /See:/ 'newAdministratorWebTokenSpecPlaySearch' smart constructor.
data AdministratorWebTokenSpecPlaySearch = AdministratorWebTokenSpecPlaySearch
  { -- | Allow access to the iframe in approve mode. Default is false.
    approveApps :: (Core.Maybe Core.Bool),
    -- | Whether the managed Play Search apps page is displayed. Default is true.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdministratorWebTokenSpecPlaySearch' with the minimum fields required to make a request.
newAdministratorWebTokenSpecPlaySearch ::
  AdministratorWebTokenSpecPlaySearch
newAdministratorWebTokenSpecPlaySearch =
  AdministratorWebTokenSpecPlaySearch
    { approveApps = Core.Nothing,
      enabled = Core.Nothing
    }

instance
  Core.FromJSON
    AdministratorWebTokenSpecPlaySearch
  where
  parseJSON =
    Core.withObject
      "AdministratorWebTokenSpecPlaySearch"
      ( \o ->
          AdministratorWebTokenSpecPlaySearch
            Core.<$> (o Core..:? "approveApps")
            Core.<*> (o Core..:? "enabled")
      )

instance
  Core.ToJSON
    AdministratorWebTokenSpecPlaySearch
  where
  toJSON AdministratorWebTokenSpecPlaySearch {..} =
    Core.object
      ( Core.catMaybes
          [ ("approveApps" Core..=) Core.<$> approveApps,
            ("enabled" Core..=) Core.<$> enabled
          ]
      )

--
-- /See:/ 'newAdministratorWebTokenSpecPrivateApps' smart constructor.
newtype AdministratorWebTokenSpecPrivateApps = AdministratorWebTokenSpecPrivateApps
  { -- | Whether the Private Apps page is displayed. Default is true.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdministratorWebTokenSpecPrivateApps' with the minimum fields required to make a request.
newAdministratorWebTokenSpecPrivateApps ::
  AdministratorWebTokenSpecPrivateApps
newAdministratorWebTokenSpecPrivateApps =
  AdministratorWebTokenSpecPrivateApps {enabled = Core.Nothing}

instance
  Core.FromJSON
    AdministratorWebTokenSpecPrivateApps
  where
  parseJSON =
    Core.withObject
      "AdministratorWebTokenSpecPrivateApps"
      ( \o ->
          AdministratorWebTokenSpecPrivateApps
            Core.<$> (o Core..:? "enabled")
      )

instance
  Core.ToJSON
    AdministratorWebTokenSpecPrivateApps
  where
  toJSON AdministratorWebTokenSpecPrivateApps {..} =
    Core.object
      ( Core.catMaybes
          [("enabled" Core..=) Core.<$> enabled]
      )

--
-- /See:/ 'newAdministratorWebTokenSpecStoreBuilder' smart constructor.
newtype AdministratorWebTokenSpecStoreBuilder = AdministratorWebTokenSpecStoreBuilder
  { -- | Whether the Organize apps page is displayed. Default is true.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdministratorWebTokenSpecStoreBuilder' with the minimum fields required to make a request.
newAdministratorWebTokenSpecStoreBuilder ::
  AdministratorWebTokenSpecStoreBuilder
newAdministratorWebTokenSpecStoreBuilder =
  AdministratorWebTokenSpecStoreBuilder {enabled = Core.Nothing}

instance
  Core.FromJSON
    AdministratorWebTokenSpecStoreBuilder
  where
  parseJSON =
    Core.withObject
      "AdministratorWebTokenSpecStoreBuilder"
      ( \o ->
          AdministratorWebTokenSpecStoreBuilder
            Core.<$> (o Core..:? "enabled")
      )

instance
  Core.ToJSON
    AdministratorWebTokenSpecStoreBuilder
  where
  toJSON AdministratorWebTokenSpecStoreBuilder {..} =
    Core.object
      ( Core.catMaybes
          [("enabled" Core..=) Core.<$> enabled]
      )

--
-- /See:/ 'newAdministratorWebTokenSpecWebApps' smart constructor.
newtype AdministratorWebTokenSpecWebApps = AdministratorWebTokenSpecWebApps
  { -- | Whether the Web Apps page is displayed. Default is true.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdministratorWebTokenSpecWebApps' with the minimum fields required to make a request.
newAdministratorWebTokenSpecWebApps ::
  AdministratorWebTokenSpecWebApps
newAdministratorWebTokenSpecWebApps =
  AdministratorWebTokenSpecWebApps {enabled = Core.Nothing}

instance
  Core.FromJSON
    AdministratorWebTokenSpecWebApps
  where
  parseJSON =
    Core.withObject
      "AdministratorWebTokenSpecWebApps"
      ( \o ->
          AdministratorWebTokenSpecWebApps
            Core.<$> (o Core..:? "enabled")
      )

instance Core.ToJSON AdministratorWebTokenSpecWebApps where
  toJSON AdministratorWebTokenSpecWebApps {..} =
    Core.object
      ( Core.catMaybes
          [("enabled" Core..=) Core.<$> enabled]
      )

--
-- /See:/ 'newAdministratorWebTokenSpecZeroTouch' smart constructor.
newtype AdministratorWebTokenSpecZeroTouch = AdministratorWebTokenSpecZeroTouch
  { -- | Whether zero-touch embedded UI is usable with this token. If enabled, the admin can link zero-touch customers to this enterprise.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdministratorWebTokenSpecZeroTouch' with the minimum fields required to make a request.
newAdministratorWebTokenSpecZeroTouch ::
  AdministratorWebTokenSpecZeroTouch
newAdministratorWebTokenSpecZeroTouch =
  AdministratorWebTokenSpecZeroTouch {enabled = Core.Nothing}

instance
  Core.FromJSON
    AdministratorWebTokenSpecZeroTouch
  where
  parseJSON =
    Core.withObject
      "AdministratorWebTokenSpecZeroTouch"
      ( \o ->
          AdministratorWebTokenSpecZeroTouch
            Core.<$> (o Core..:? "enabled")
      )

instance
  Core.ToJSON
    AdministratorWebTokenSpecZeroTouch
  where
  toJSON AdministratorWebTokenSpecZeroTouch {..} =
    Core.object
      ( Core.catMaybes
          [("enabled" Core..=) Core.<$> enabled]
      )

-- | Represents the list of app restrictions available to be pre-configured for the product.
--
-- /See:/ 'newAppRestrictionsSchema' smart constructor.
data AppRestrictionsSchema = AppRestrictionsSchema
  { -- | Deprecated.
    kind :: (Core.Maybe Core.Text),
    -- | The set of restrictions that make up this schema.
    restrictions :: (Core.Maybe [AppRestrictionsSchemaRestriction])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppRestrictionsSchema' with the minimum fields required to make a request.
newAppRestrictionsSchema ::
  AppRestrictionsSchema
newAppRestrictionsSchema =
  AppRestrictionsSchema {kind = Core.Nothing, restrictions = Core.Nothing}

instance Core.FromJSON AppRestrictionsSchema where
  parseJSON =
    Core.withObject
      "AppRestrictionsSchema"
      ( \o ->
          AppRestrictionsSchema
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "restrictions" Core..!= Core.mempty)
      )

instance Core.ToJSON AppRestrictionsSchema where
  toJSON AppRestrictionsSchema {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("restrictions" Core..=) Core.<$> restrictions
          ]
      )

-- | An event generated when a new app version is uploaded to Google Play and its app restrictions schema changed. To fetch the app restrictions schema for an app, use Products.getAppRestrictionsSchema on the EMM API.
--
-- /See:/ 'newAppRestrictionsSchemaChangeEvent' smart constructor.
newtype AppRestrictionsSchemaChangeEvent = AppRestrictionsSchemaChangeEvent
  { -- | The id of the product (e.g. \"app:com.google.android.gm\") for which the app restriction schema changed. This field will always be present.
    productId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppRestrictionsSchemaChangeEvent' with the minimum fields required to make a request.
newAppRestrictionsSchemaChangeEvent ::
  AppRestrictionsSchemaChangeEvent
newAppRestrictionsSchemaChangeEvent =
  AppRestrictionsSchemaChangeEvent {productId = Core.Nothing}

instance
  Core.FromJSON
    AppRestrictionsSchemaChangeEvent
  where
  parseJSON =
    Core.withObject
      "AppRestrictionsSchemaChangeEvent"
      ( \o ->
          AppRestrictionsSchemaChangeEvent
            Core.<$> (o Core..:? "productId")
      )

instance Core.ToJSON AppRestrictionsSchemaChangeEvent where
  toJSON AppRestrictionsSchemaChangeEvent {..} =
    Core.object
      ( Core.catMaybes
          [("productId" Core..=) Core.<$> productId]
      )

-- | A restriction in the App Restriction Schema represents a piece of configuration that may be pre-applied.
--
-- /See:/ 'newAppRestrictionsSchemaRestriction' smart constructor.
data AppRestrictionsSchemaRestriction = AppRestrictionsSchemaRestriction
  { -- | The default value of the restriction. bundle and bundleArray restrictions never have a default value.
    defaultValue :: (Core.Maybe AppRestrictionsSchemaRestrictionRestrictionValue),
    -- | A longer description of the restriction, giving more detail of what it affects.
    description :: (Core.Maybe Core.Text),
    -- | For choice or multiselect restrictions, the list of possible entries\' human-readable names.
    entry :: (Core.Maybe [Core.Text]),
    -- | For choice or multiselect restrictions, the list of possible entries\' machine-readable values. These values should be used in the configuration, either as a single string value for a choice restriction or in a stringArray for a multiselect restriction.
    entryValue :: (Core.Maybe [Core.Text]),
    -- | The unique key that the product uses to identify the restriction, e.g. \"com.google.android.gm.fieldname\".
    key :: (Core.Maybe Core.Text),
    -- | For bundle or bundleArray restrictions, the list of nested restrictions. A bundle restriction is always nested within a bundleArray restriction, and a bundleArray restriction is at most two levels deep.
    nestedRestriction :: (Core.Maybe [AppRestrictionsSchemaRestriction]),
    -- | The type of the restriction.
    restrictionType :: (Core.Maybe AppRestrictionsSchemaRestriction_RestrictionType),
    -- | The name of the restriction.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppRestrictionsSchemaRestriction' with the minimum fields required to make a request.
newAppRestrictionsSchemaRestriction ::
  AppRestrictionsSchemaRestriction
newAppRestrictionsSchemaRestriction =
  AppRestrictionsSchemaRestriction
    { defaultValue = Core.Nothing,
      description = Core.Nothing,
      entry = Core.Nothing,
      entryValue = Core.Nothing,
      key = Core.Nothing,
      nestedRestriction = Core.Nothing,
      restrictionType = Core.Nothing,
      title = Core.Nothing
    }

instance
  Core.FromJSON
    AppRestrictionsSchemaRestriction
  where
  parseJSON =
    Core.withObject
      "AppRestrictionsSchemaRestriction"
      ( \o ->
          AppRestrictionsSchemaRestriction
            Core.<$> (o Core..:? "defaultValue")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "entry" Core..!= Core.mempty)
            Core.<*> (o Core..:? "entryValue" Core..!= Core.mempty)
            Core.<*> (o Core..:? "key")
            Core.<*> (o Core..:? "nestedRestriction" Core..!= Core.mempty)
            Core.<*> (o Core..:? "restrictionType")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON AppRestrictionsSchemaRestriction where
  toJSON AppRestrictionsSchemaRestriction {..} =
    Core.object
      ( Core.catMaybes
          [ ("defaultValue" Core..=) Core.<$> defaultValue,
            ("description" Core..=) Core.<$> description,
            ("entry" Core..=) Core.<$> entry,
            ("entryValue" Core..=) Core.<$> entryValue,
            ("key" Core..=) Core.<$> key,
            ("nestedRestriction" Core..=)
              Core.<$> nestedRestriction,
            ("restrictionType" Core..=) Core.<$> restrictionType,
            ("title" Core..=) Core.<$> title
          ]
      )

-- | A typed value for the restriction.
--
-- /See:/ 'newAppRestrictionsSchemaRestrictionRestrictionValue' smart constructor.
data AppRestrictionsSchemaRestrictionRestrictionValue = AppRestrictionsSchemaRestrictionRestrictionValue
  { -- | The type of the value being provided.
    type' :: (Core.Maybe AppRestrictionsSchemaRestrictionRestrictionValue_Type),
    -- | The boolean value - this will only be present if type is bool.
    valueBool :: (Core.Maybe Core.Bool),
    -- | The integer value - this will only be present if type is integer.
    valueInteger :: (Core.Maybe Core.Int32),
    -- | The list of string values - this will only be present if type is multiselect.
    valueMultiselect :: (Core.Maybe [Core.Text]),
    -- | The string value - this will be present for types string, choice and hidden.
    valueString :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppRestrictionsSchemaRestrictionRestrictionValue' with the minimum fields required to make a request.
newAppRestrictionsSchemaRestrictionRestrictionValue ::
  AppRestrictionsSchemaRestrictionRestrictionValue
newAppRestrictionsSchemaRestrictionRestrictionValue =
  AppRestrictionsSchemaRestrictionRestrictionValue
    { type' = Core.Nothing,
      valueBool = Core.Nothing,
      valueInteger = Core.Nothing,
      valueMultiselect = Core.Nothing,
      valueString = Core.Nothing
    }

instance
  Core.FromJSON
    AppRestrictionsSchemaRestrictionRestrictionValue
  where
  parseJSON =
    Core.withObject
      "AppRestrictionsSchemaRestrictionRestrictionValue"
      ( \o ->
          AppRestrictionsSchemaRestrictionRestrictionValue
            Core.<$> (o Core..:? "type") Core.<*> (o Core..:? "valueBool")
              Core.<*> (o Core..:? "valueInteger")
              Core.<*> (o Core..:? "valueMultiselect" Core..!= Core.mempty)
              Core.<*> (o Core..:? "valueString")
      )

instance
  Core.ToJSON
    AppRestrictionsSchemaRestrictionRestrictionValue
  where
  toJSON
    AppRestrictionsSchemaRestrictionRestrictionValue {..} =
      Core.object
        ( Core.catMaybes
            [ ("type" Core..=) Core.<$> type',
              ("valueBool" Core..=) Core.<$> valueBool,
              ("valueInteger" Core..=) Core.<$> valueInteger,
              ("valueMultiselect" Core..=)
                Core.<$> valueMultiselect,
              ("valueString" Core..=) Core.<$> valueString
            ]
        )

-- | List of states set by the app.
--
-- /See:/ 'newAppState' smart constructor.
data AppState = AppState
  { -- | List of keyed app states. This field will always be present.
    keyedAppState :: (Core.Maybe [KeyedAppState]),
    -- | The package name of the app. This field will always be present.
    packageName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppState' with the minimum fields required to make a request.
newAppState ::
  AppState
newAppState =
  AppState {keyedAppState = Core.Nothing, packageName = Core.Nothing}

instance Core.FromJSON AppState where
  parseJSON =
    Core.withObject
      "AppState"
      ( \o ->
          AppState
            Core.<$> (o Core..:? "keyedAppState" Core..!= Core.mempty)
            Core.<*> (o Core..:? "packageName")
      )

instance Core.ToJSON AppState where
  toJSON AppState {..} =
    Core.object
      ( Core.catMaybes
          [ ("keyedAppState" Core..=) Core.<$> keyedAppState,
            ("packageName" Core..=) Core.<$> packageName
          ]
      )

-- | An event generated when a new version of an app is uploaded to Google Play. Notifications are sent for new public versions only: alpha, beta, or canary versions do not generate this event. To fetch up-to-date version history for an app, use Products.Get on the EMM API.
--
-- /See:/ 'newAppUpdateEvent' smart constructor.
newtype AppUpdateEvent = AppUpdateEvent
  { -- | The id of the product (e.g. \"app:com.google.android.gm\") that was updated. This field will always be present.
    productId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppUpdateEvent' with the minimum fields required to make a request.
newAppUpdateEvent ::
  AppUpdateEvent
newAppUpdateEvent = AppUpdateEvent {productId = Core.Nothing}

instance Core.FromJSON AppUpdateEvent where
  parseJSON =
    Core.withObject
      "AppUpdateEvent"
      ( \o ->
          AppUpdateEvent Core.<$> (o Core..:? "productId")
      )

instance Core.ToJSON AppUpdateEvent where
  toJSON AppUpdateEvent {..} =
    Core.object
      ( Core.catMaybes
          [("productId" Core..=) Core.<$> productId]
      )

-- | This represents a single version of the app.
--
-- /See:/ 'newAppVersion' smart constructor.
data AppVersion = AppVersion
  { -- | True if this version is a production APK.
    isProduction :: (Core.Maybe Core.Bool),
    -- | Deprecated, use trackId instead.
    track :: (Core.Maybe AppVersion_Track),
    -- | Track ids that the app version is published in. Replaces the track field (deprecated), but doesn\'t include the production track (see isProduction instead).
    trackId :: (Core.Maybe [Core.Text]),
    -- | Unique increasing identifier for the app version.
    versionCode :: (Core.Maybe Core.Int32),
    -- | The string used in the Play store by the app developer to identify the version. The string is not necessarily unique or localized (for example, the string could be \"1.4\").
    versionString :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AppVersion' with the minimum fields required to make a request.
newAppVersion ::
  AppVersion
newAppVersion =
  AppVersion
    { isProduction = Core.Nothing,
      track = Core.Nothing,
      trackId = Core.Nothing,
      versionCode = Core.Nothing,
      versionString = Core.Nothing
    }

instance Core.FromJSON AppVersion where
  parseJSON =
    Core.withObject
      "AppVersion"
      ( \o ->
          AppVersion
            Core.<$> (o Core..:? "isProduction")
            Core.<*> (o Core..:? "track")
            Core.<*> (o Core..:? "trackId" Core..!= Core.mempty)
            Core.<*> (o Core..:? "versionCode")
            Core.<*> (o Core..:? "versionString")
      )

instance Core.ToJSON AppVersion where
  toJSON AppVersion {..} =
    Core.object
      ( Core.catMaybes
          [ ("isProduction" Core..=) Core.<$> isProduction,
            ("track" Core..=) Core.<$> track,
            ("trackId" Core..=) Core.<$> trackId,
            ("versionCode" Core..=) Core.<$> versionCode,
            ("versionString" Core..=) Core.<$> versionString
          ]
      )

-- | Information on an approval URL.
--
-- /See:/ 'newApprovalUrlInfo' smart constructor.
newtype ApprovalUrlInfo = ApprovalUrlInfo
  { -- | A URL that displays a product\'s permissions and that can also be used to approve the product with the Products.approve call.
    approvalUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApprovalUrlInfo' with the minimum fields required to make a request.
newApprovalUrlInfo ::
  ApprovalUrlInfo
newApprovalUrlInfo = ApprovalUrlInfo {approvalUrl = Core.Nothing}

instance Core.FromJSON ApprovalUrlInfo where
  parseJSON =
    Core.withObject
      "ApprovalUrlInfo"
      ( \o ->
          ApprovalUrlInfo Core.<$> (o Core..:? "approvalUrl")
      )

instance Core.ToJSON ApprovalUrlInfo where
  toJSON ApprovalUrlInfo {..} =
    Core.object
      ( Core.catMaybes
          [("approvalUrl" Core..=) Core.<$> approvalUrl]
      )

-- | An AuthenticationToken is used by the EMM\'s device policy client on a device to provision the given EMM-managed user on that device.
--
-- /See:/ 'newAuthenticationToken' smart constructor.
newtype AuthenticationToken = AuthenticationToken
  { -- | The authentication token to be passed to the device policy client on the device where it can be used to provision the account for which this token was generated.
    token :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AuthenticationToken' with the minimum fields required to make a request.
newAuthenticationToken ::
  AuthenticationToken
newAuthenticationToken = AuthenticationToken {token = Core.Nothing}

instance Core.FromJSON AuthenticationToken where
  parseJSON =
    Core.withObject
      "AuthenticationToken"
      ( \o ->
          AuthenticationToken Core.<$> (o Core..:? "token")
      )

instance Core.ToJSON AuthenticationToken where
  toJSON AuthenticationToken {..} =
    Core.object
      (Core.catMaybes [("token" Core..=) Core.<$> token])

-- | The auto-install constraint. Defines a set of restrictions for installation. At least one of the fields must be set.
--
-- /See:/ 'newAutoInstallConstraint' smart constructor.
data AutoInstallConstraint = AutoInstallConstraint
  { -- | Charging state constraint.
    chargingStateConstraint :: (Core.Maybe AutoInstallConstraint_ChargingStateConstraint),
    -- | Device idle state constraint.
    deviceIdleStateConstraint :: (Core.Maybe AutoInstallConstraint_DeviceIdleStateConstraint),
    -- | Network type constraint.
    networkTypeConstraint :: (Core.Maybe AutoInstallConstraint_NetworkTypeConstraint)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutoInstallConstraint' with the minimum fields required to make a request.
newAutoInstallConstraint ::
  AutoInstallConstraint
newAutoInstallConstraint =
  AutoInstallConstraint
    { chargingStateConstraint = Core.Nothing,
      deviceIdleStateConstraint = Core.Nothing,
      networkTypeConstraint = Core.Nothing
    }

instance Core.FromJSON AutoInstallConstraint where
  parseJSON =
    Core.withObject
      "AutoInstallConstraint"
      ( \o ->
          AutoInstallConstraint
            Core.<$> (o Core..:? "chargingStateConstraint")
            Core.<*> (o Core..:? "deviceIdleStateConstraint")
            Core.<*> (o Core..:? "networkTypeConstraint")
      )

instance Core.ToJSON AutoInstallConstraint where
  toJSON AutoInstallConstraint {..} =
    Core.object
      ( Core.catMaybes
          [ ("chargingStateConstraint" Core..=)
              Core.<$> chargingStateConstraint,
            ("deviceIdleStateConstraint" Core..=)
              Core.<$> deviceIdleStateConstraint,
            ("networkTypeConstraint" Core..=)
              Core.<$> networkTypeConstraint
          ]
      )

--
-- /See:/ 'newAutoInstallPolicy' smart constructor.
data AutoInstallPolicy = AutoInstallPolicy
  { -- | The constraints for auto-installing the app. You can specify a maximum of one constraint.
    autoInstallConstraint :: (Core.Maybe [AutoInstallConstraint]),
    -- | The auto-install mode. If unset defaults to \"doNotAutoInstall\".
    autoInstallMode :: (Core.Maybe AutoInstallPolicy_AutoInstallMode),
    -- | The priority of the install, as an unsigned integer. A lower number means higher priority.
    autoInstallPriority :: (Core.Maybe Core.Int32),
    -- | The minimum version of the app. If a lower version of the app is installed, then the app will be auto-updated according to the auto-install constraints, instead of waiting for the regular auto-update. You can set a minimum version code for at most 20 apps per device.
    minimumVersionCode :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AutoInstallPolicy' with the minimum fields required to make a request.
newAutoInstallPolicy ::
  AutoInstallPolicy
newAutoInstallPolicy =
  AutoInstallPolicy
    { autoInstallConstraint = Core.Nothing,
      autoInstallMode = Core.Nothing,
      autoInstallPriority = Core.Nothing,
      minimumVersionCode = Core.Nothing
    }

instance Core.FromJSON AutoInstallPolicy where
  parseJSON =
    Core.withObject
      "AutoInstallPolicy"
      ( \o ->
          AutoInstallPolicy
            Core.<$> ( o Core..:? "autoInstallConstraint"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "autoInstallMode")
            Core.<*> (o Core..:? "autoInstallPriority")
            Core.<*> (o Core..:? "minimumVersionCode")
      )

instance Core.ToJSON AutoInstallPolicy where
  toJSON AutoInstallPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoInstallConstraint" Core..=)
              Core.<$> autoInstallConstraint,
            ("autoInstallMode" Core..=) Core.<$> autoInstallMode,
            ("autoInstallPriority" Core..=)
              Core.<$> autoInstallPriority,
            ("minimumVersionCode" Core..=)
              Core.<$> minimumVersionCode
          ]
      )

-- | A configuration variables resource contains the managed configuration settings ID to be applied to a single user, as well as the variable set that is attributed to the user. The variable set will be used to replace placeholders in the managed configuration settings.
--
-- /See:/ 'newConfigurationVariables' smart constructor.
data ConfigurationVariables = ConfigurationVariables
  { -- | The ID of the managed configurations settings.
    mcmId :: (Core.Maybe Core.Text),
    -- | The variable set that is attributed to the user.
    variableSet :: (Core.Maybe [VariableSet])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ConfigurationVariables' with the minimum fields required to make a request.
newConfigurationVariables ::
  ConfigurationVariables
newConfigurationVariables =
  ConfigurationVariables {mcmId = Core.Nothing, variableSet = Core.Nothing}

instance Core.FromJSON ConfigurationVariables where
  parseJSON =
    Core.withObject
      "ConfigurationVariables"
      ( \o ->
          ConfigurationVariables
            Core.<$> (o Core..:? "mcmId")
            Core.<*> (o Core..:? "variableSet" Core..!= Core.mempty)
      )

instance Core.ToJSON ConfigurationVariables where
  toJSON ConfigurationVariables {..} =
    Core.object
      ( Core.catMaybes
          [ ("mcmId" Core..=) Core.<$> mcmId,
            ("variableSet" Core..=) Core.<$> variableSet
          ]
      )

-- | A Devices resource represents a mobile device managed by the EMM and belonging to a specific enterprise user.
--
-- /See:/ 'newDevice' smart constructor.
data Device = Device
  { -- | The Google Play Services Android ID for the device encoded as a lowercase hex string. For example, \"123456789abcdef0\".
    androidId :: (Core.Maybe Core.Text),
    -- | Identifies the extent to which the device is controlled by a managed Google Play EMM in various deployment configurations. Possible values include: - \"managedDevice\", a device that has the EMM\'s device policy controller (DPC) as the device owner. - \"managedProfile\", a device that has a profile managed by the DPC (DPC is profile owner) in addition to a separate, personal profile that is unavailable to the DPC. - \"containerApp\", no longer used (deprecated). - \"unmanagedProfile\", a device that has been allowed (by the domain\'s admin, using the Admin Console to enable the privilege) to use managed Google Play, but the profile is itself not owned by a DPC.
    managementType :: (Core.Maybe Device_ManagementType),
    -- | The policy enforced on the device.
    policy :: (Core.Maybe Policy),
    -- | The device report updated with the latest app states.
    report :: (Core.Maybe DeviceReport)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Device' with the minimum fields required to make a request.
newDevice ::
  Device
newDevice =
  Device
    { androidId = Core.Nothing,
      managementType = Core.Nothing,
      policy = Core.Nothing,
      report = Core.Nothing
    }

instance Core.FromJSON Device where
  parseJSON =
    Core.withObject
      "Device"
      ( \o ->
          Device
            Core.<$> (o Core..:? "androidId")
            Core.<*> (o Core..:? "managementType")
            Core.<*> (o Core..:? "policy")
            Core.<*> (o Core..:? "report")
      )

instance Core.ToJSON Device where
  toJSON Device {..} =
    Core.object
      ( Core.catMaybes
          [ ("androidId" Core..=) Core.<$> androidId,
            ("managementType" Core..=) Core.<$> managementType,
            ("policy" Core..=) Core.<$> policy,
            ("report" Core..=) Core.<$> report
          ]
      )

-- | Device report updated with the latest app states for managed apps on the device.
--
-- /See:/ 'newDeviceReport' smart constructor.
data DeviceReport = DeviceReport
  { -- | List of app states set by managed apps on the device. App states are defined by the app\'s developers. This field will always be present.
    appState :: (Core.Maybe [AppState]),
    -- | The timestamp of the last report update in milliseconds since epoch. This field will always be present.
    lastUpdatedTimestampMillis :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceReport' with the minimum fields required to make a request.
newDeviceReport ::
  DeviceReport
newDeviceReport =
  DeviceReport
    { appState = Core.Nothing,
      lastUpdatedTimestampMillis = Core.Nothing
    }

instance Core.FromJSON DeviceReport where
  parseJSON =
    Core.withObject
      "DeviceReport"
      ( \o ->
          DeviceReport
            Core.<$> (o Core..:? "appState" Core..!= Core.mempty)
            Core.<*> (o Core..:? "lastUpdatedTimestampMillis")
      )

instance Core.ToJSON DeviceReport where
  toJSON DeviceReport {..} =
    Core.object
      ( Core.catMaybes
          [ ("appState" Core..=) Core.<$> appState,
            ("lastUpdatedTimestampMillis" Core..=)
              Core.. Core.AsText
              Core.<$> lastUpdatedTimestampMillis
          ]
      )

-- | An event generated when an updated device report is available.
--
-- /See:/ 'newDeviceReportUpdateEvent' smart constructor.
data DeviceReportUpdateEvent = DeviceReportUpdateEvent
  { -- | The Android ID of the device. This field will always be present.
    deviceId :: (Core.Maybe Core.Text),
    -- | The device report updated with the latest app states. This field will always be present.
    report :: (Core.Maybe DeviceReport),
    -- | The ID of the user. This field will always be present.
    userId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceReportUpdateEvent' with the minimum fields required to make a request.
newDeviceReportUpdateEvent ::
  DeviceReportUpdateEvent
newDeviceReportUpdateEvent =
  DeviceReportUpdateEvent
    { deviceId = Core.Nothing,
      report = Core.Nothing,
      userId = Core.Nothing
    }

instance Core.FromJSON DeviceReportUpdateEvent where
  parseJSON =
    Core.withObject
      "DeviceReportUpdateEvent"
      ( \o ->
          DeviceReportUpdateEvent
            Core.<$> (o Core..:? "deviceId")
            Core.<*> (o Core..:? "report")
            Core.<*> (o Core..:? "userId")
      )

instance Core.ToJSON DeviceReportUpdateEvent where
  toJSON DeviceReportUpdateEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceId" Core..=) Core.<$> deviceId,
            ("report" Core..=) Core.<$> report,
            ("userId" Core..=) Core.<$> userId
          ]
      )

-- | The state of a user\'s device, as accessed by the getState and setState methods on device resources.
--
-- /See:/ 'newDeviceState' smart constructor.
newtype DeviceState = DeviceState
  { -- | The state of the Google account on the device. \"enabled\" indicates that the Google account on the device can be used to access Google services (including Google Play), while \"disabled\" means that it cannot. A new device is initially in the \"disabled\" state.
    accountState :: (Core.Maybe DeviceState_AccountState)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeviceState' with the minimum fields required to make a request.
newDeviceState ::
  DeviceState
newDeviceState = DeviceState {accountState = Core.Nothing}

instance Core.FromJSON DeviceState where
  parseJSON =
    Core.withObject
      "DeviceState"
      ( \o ->
          DeviceState Core.<$> (o Core..:? "accountState")
      )

instance Core.ToJSON DeviceState where
  toJSON DeviceState {..} =
    Core.object
      ( Core.catMaybes
          [("accountState" Core..=) Core.<$> accountState]
      )

--
-- /See:/ 'newDevicesListResponse' smart constructor.
newtype DevicesListResponse = DevicesListResponse
  { -- | A managed device.
    device :: (Core.Maybe [Device])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DevicesListResponse' with the minimum fields required to make a request.
newDevicesListResponse ::
  DevicesListResponse
newDevicesListResponse = DevicesListResponse {device = Core.Nothing}

instance Core.FromJSON DevicesListResponse where
  parseJSON =
    Core.withObject
      "DevicesListResponse"
      ( \o ->
          DevicesListResponse
            Core.<$> (o Core..:? "device" Core..!= Core.mempty)
      )

instance Core.ToJSON DevicesListResponse where
  toJSON DevicesListResponse {..} =
    Core.object
      (Core.catMaybes [("device" Core..=) Core.<$> device])

-- | An Enterprises resource represents the binding between an EMM and a specific organization. That binding can be instantiated in one of two different ways using this API as follows: - For Google managed domain customers, the process involves using Enterprises.enroll and Enterprises.setAccount (in conjunction with artifacts obtained from the Admin console and the Google API Console) and submitted to the EMM through a more-or-less manual process. - For managed Google Play Accounts customers, the process involves using Enterprises.generateSignupUrl and Enterprises.completeSignup in conjunction with the managed Google Play sign-up UI (Google-provided mechanism) to create the binding without manual steps. As an EMM, you can support either or both approaches in your EMM console. See Create an Enterprise for details.
--
-- /See:/ 'newEnterprise' smart constructor.
data Enterprise = Enterprise
  { -- | Admins of the enterprise. This is only supported for enterprises created via the EMM-initiated flow.
    administrator :: (Core.Maybe [Administrator]),
    -- | The unique ID for the enterprise.
    id :: (Core.Maybe Core.Text),
    -- | The name of the enterprise, for example, \"Example, Inc\".
    name :: (Core.Maybe Core.Text),
    -- | The enterprise\'s primary domain, such as \"example.com\".
    primaryDomain :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Enterprise' with the minimum fields required to make a request.
newEnterprise ::
  Enterprise
newEnterprise =
  Enterprise
    { administrator = Core.Nothing,
      id = Core.Nothing,
      name = Core.Nothing,
      primaryDomain = Core.Nothing
    }

instance Core.FromJSON Enterprise where
  parseJSON =
    Core.withObject
      "Enterprise"
      ( \o ->
          Enterprise
            Core.<$> (o Core..:? "administrator" Core..!= Core.mempty)
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "primaryDomain")
      )

instance Core.ToJSON Enterprise where
  toJSON Enterprise {..} =
    Core.object
      ( Core.catMaybes
          [ ("administrator" Core..=) Core.<$> administrator,
            ("id" Core..=) Core.<$> id,
            ("name" Core..=) Core.<$> name,
            ("primaryDomain" Core..=) Core.<$> primaryDomain
          ]
      )

-- | A service account that can be used to authenticate as the enterprise to API calls that require such authentication.
--
-- /See:/ 'newEnterpriseAccount' smart constructor.
newtype EnterpriseAccount = EnterpriseAccount
  { -- | The email address of the service account.
    accountEmail :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnterpriseAccount' with the minimum fields required to make a request.
newEnterpriseAccount ::
  EnterpriseAccount
newEnterpriseAccount = EnterpriseAccount {accountEmail = Core.Nothing}

instance Core.FromJSON EnterpriseAccount where
  parseJSON =
    Core.withObject
      "EnterpriseAccount"
      ( \o ->
          EnterpriseAccount
            Core.<$> (o Core..:? "accountEmail")
      )

instance Core.ToJSON EnterpriseAccount where
  toJSON EnterpriseAccount {..} =
    Core.object
      ( Core.catMaybes
          [("accountEmail" Core..=) Core.<$> accountEmail]
      )

--
-- /See:/ 'newEnterprisesListResponse' smart constructor.
newtype EnterprisesListResponse = EnterprisesListResponse
  { -- | An enterprise.
    enterprise :: (Core.Maybe [Enterprise])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnterprisesListResponse' with the minimum fields required to make a request.
newEnterprisesListResponse ::
  EnterprisesListResponse
newEnterprisesListResponse = EnterprisesListResponse {enterprise = Core.Nothing}

instance Core.FromJSON EnterprisesListResponse where
  parseJSON =
    Core.withObject
      "EnterprisesListResponse"
      ( \o ->
          EnterprisesListResponse
            Core.<$> (o Core..:? "enterprise" Core..!= Core.mempty)
      )

instance Core.ToJSON EnterprisesListResponse where
  toJSON EnterprisesListResponse {..} =
    Core.object
      ( Core.catMaybes
          [("enterprise" Core..=) Core.<$> enterprise]
      )

--
-- /See:/ 'newEnterprisesSendTestPushNotificationResponse' smart constructor.
data EnterprisesSendTestPushNotificationResponse = EnterprisesSendTestPushNotificationResponse
  { -- | The message ID of the test push notification that was sent.
    messageId :: (Core.Maybe Core.Text),
    -- | The name of the Cloud Pub\/Sub topic to which notifications for this enterprise\'s enrolled account will be sent.
    topicName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnterprisesSendTestPushNotificationResponse' with the minimum fields required to make a request.
newEnterprisesSendTestPushNotificationResponse ::
  EnterprisesSendTestPushNotificationResponse
newEnterprisesSendTestPushNotificationResponse =
  EnterprisesSendTestPushNotificationResponse
    { messageId = Core.Nothing,
      topicName = Core.Nothing
    }

instance
  Core.FromJSON
    EnterprisesSendTestPushNotificationResponse
  where
  parseJSON =
    Core.withObject
      "EnterprisesSendTestPushNotificationResponse"
      ( \o ->
          EnterprisesSendTestPushNotificationResponse
            Core.<$> (o Core..:? "messageId")
            Core.<*> (o Core..:? "topicName")
      )

instance
  Core.ToJSON
    EnterprisesSendTestPushNotificationResponse
  where
  toJSON
    EnterprisesSendTestPushNotificationResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("messageId" Core..=) Core.<$> messageId,
              ("topicName" Core..=) Core.<$> topicName
            ]
        )

-- | The presence of an Entitlements resource indicates that a user has the right to use a particular app. Entitlements are user specific, not device specific. This allows a user with an entitlement to an app to install the app on all their devices. It\'s also possible for a user to hold an entitlement to an app without installing the app on any device. The API can be used to create an entitlement. As an option, you can also use the API to trigger the installation of an app on all a user\'s managed devices at the same time the entitlement is created. If the app is free, creating the entitlement also creates a group license for that app. For paid apps, creating the entitlement consumes one license, and that license remains consumed until the entitlement is removed. If the enterprise hasn\'t purchased enough licenses, then no entitlement is created and the installation fails. An entitlement is also not created for an app if the app requires permissions that the enterprise hasn\'t accepted. If an entitlement is
-- deleted, the app may be uninstalled from a user\'s device. As a best practice, uninstall the app by calling Installs.delete() before deleting the entitlement. Entitlements for apps that a user pays for on an unmanaged profile have \"userPurchase\" as the entitlement reason. These entitlements cannot be removed via the API.
--
-- /See:/ 'newEntitlement' smart constructor.
data Entitlement = Entitlement
  { -- | The ID of the product that the entitlement is for. For example, \"app:com.google.android.gm\".
    productId :: (Core.Maybe Core.Text),
    -- | The reason for the entitlement. For example, \"free\" for free apps. This property is temporary: it will be replaced by the acquisition kind field of group licenses.
    reason :: (Core.Maybe Entitlement_Reason)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Entitlement' with the minimum fields required to make a request.
newEntitlement ::
  Entitlement
newEntitlement = Entitlement {productId = Core.Nothing, reason = Core.Nothing}

instance Core.FromJSON Entitlement where
  parseJSON =
    Core.withObject
      "Entitlement"
      ( \o ->
          Entitlement
            Core.<$> (o Core..:? "productId")
            Core.<*> (o Core..:? "reason")
      )

instance Core.ToJSON Entitlement where
  toJSON Entitlement {..} =
    Core.object
      ( Core.catMaybes
          [ ("productId" Core..=) Core.<$> productId,
            ("reason" Core..=) Core.<$> reason
          ]
      )

--
-- /See:/ 'newEntitlementsListResponse' smart constructor.
newtype EntitlementsListResponse = EntitlementsListResponse
  { -- | An entitlement of a user to a product (e.g. an app). For example, a free app that they have installed, or a paid app that they have been allocated a license to.
    entitlement :: (Core.Maybe [Entitlement])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EntitlementsListResponse' with the minimum fields required to make a request.
newEntitlementsListResponse ::
  EntitlementsListResponse
newEntitlementsListResponse =
  EntitlementsListResponse {entitlement = Core.Nothing}

instance Core.FromJSON EntitlementsListResponse where
  parseJSON =
    Core.withObject
      "EntitlementsListResponse"
      ( \o ->
          EntitlementsListResponse
            Core.<$> (o Core..:? "entitlement" Core..!= Core.mempty)
      )

instance Core.ToJSON EntitlementsListResponse where
  toJSON EntitlementsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [("entitlement" Core..=) Core.<$> entitlement]
      )

-- | Group license objects allow you to keep track of licenses (called entitlements) for both free and paid apps. For a free app, a group license is created when an enterprise admin first approves the product in Google Play or when the first entitlement for the product is created for a user via the API. For a paid app, a group license object is only created when an enterprise admin purchases the product in Google Play for the first time. Use the API to query group licenses. A Grouplicenses resource includes the total number of licenses purchased (paid apps only) and the total number of licenses currently in use. In other words, the total number of Entitlements that exist for the product. Only one group license object is created per product and group license objects are never deleted. If a product is unapproved, its group license remains. This allows enterprise admins to keep track of any remaining entitlements for the product.
--
-- /See:/ 'newGroupLicense' smart constructor.
data GroupLicense = GroupLicense
  { -- | How this group license was acquired. \"bulkPurchase\" means that this Grouplicenses resource was created because the enterprise purchased licenses for this product; otherwise, the value is \"free\" (for free products).
    acquisitionKind :: (Core.Maybe GroupLicense_AcquisitionKind),
    -- | Whether the product to which this group license relates is currently approved by the enterprise. Products are approved when a group license is first created, but this approval may be revoked by an enterprise admin via Google Play. Unapproved products will not be visible to end users in collections, and new entitlements to them should not normally be created.
    approval :: (Core.Maybe GroupLicense_Approval),
    -- | The total number of provisioned licenses for this product. Returned by read operations, but ignored in write operations.
    numProvisioned :: (Core.Maybe Core.Int32),
    -- | The number of purchased licenses (possibly in multiple purchases). If this field is omitted, then there is no limit on the number of licenses that can be provisioned (for example, if the acquisition kind is \"free\").
    numPurchased :: (Core.Maybe Core.Int32),
    -- | The permission approval status of the product. This field is only set if the product is approved. Possible states are: - \"currentApproved\", the current set of permissions is approved, but additional permissions will require the administrator to reapprove the product (If the product was approved without specifying the approved permissions setting, then this is the default behavior.), - \"needsReapproval\", the product has unapproved permissions. No additional product licenses can be assigned until the product is reapproved, - \"allCurrentAndFutureApproved\", the current permissions are approved and any future permission updates will be automatically approved without administrator review.
    permissions :: (Core.Maybe GroupLicense_Permissions),
    -- | The ID of the product that the license is for. For example, \"app:com.google.android.gm\".
    productId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupLicense' with the minimum fields required to make a request.
newGroupLicense ::
  GroupLicense
newGroupLicense =
  GroupLicense
    { acquisitionKind = Core.Nothing,
      approval = Core.Nothing,
      numProvisioned = Core.Nothing,
      numPurchased = Core.Nothing,
      permissions = Core.Nothing,
      productId = Core.Nothing
    }

instance Core.FromJSON GroupLicense where
  parseJSON =
    Core.withObject
      "GroupLicense"
      ( \o ->
          GroupLicense
            Core.<$> (o Core..:? "acquisitionKind")
            Core.<*> (o Core..:? "approval")
            Core.<*> (o Core..:? "numProvisioned")
            Core.<*> (o Core..:? "numPurchased")
            Core.<*> (o Core..:? "permissions")
            Core.<*> (o Core..:? "productId")
      )

instance Core.ToJSON GroupLicense where
  toJSON GroupLicense {..} =
    Core.object
      ( Core.catMaybes
          [ ("acquisitionKind" Core..=)
              Core.<$> acquisitionKind,
            ("approval" Core..=) Core.<$> approval,
            ("numProvisioned" Core..=) Core.<$> numProvisioned,
            ("numPurchased" Core..=) Core.<$> numPurchased,
            ("permissions" Core..=) Core.<$> permissions,
            ("productId" Core..=) Core.<$> productId
          ]
      )

--
-- /See:/ 'newGroupLicenseUsersListResponse' smart constructor.
newtype GroupLicenseUsersListResponse = GroupLicenseUsersListResponse
  { -- | A user of an enterprise.
    user :: (Core.Maybe [User])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupLicenseUsersListResponse' with the minimum fields required to make a request.
newGroupLicenseUsersListResponse ::
  GroupLicenseUsersListResponse
newGroupLicenseUsersListResponse =
  GroupLicenseUsersListResponse {user = Core.Nothing}

instance Core.FromJSON GroupLicenseUsersListResponse where
  parseJSON =
    Core.withObject
      "GroupLicenseUsersListResponse"
      ( \o ->
          GroupLicenseUsersListResponse
            Core.<$> (o Core..:? "user" Core..!= Core.mempty)
      )

instance Core.ToJSON GroupLicenseUsersListResponse where
  toJSON GroupLicenseUsersListResponse {..} =
    Core.object
      (Core.catMaybes [("user" Core..=) Core.<$> user])

--
-- /See:/ 'newGroupLicensesListResponse' smart constructor.
newtype GroupLicensesListResponse = GroupLicensesListResponse
  { -- | A group license for a product approved for use in the enterprise.
    groupLicense :: (Core.Maybe [GroupLicense])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GroupLicensesListResponse' with the minimum fields required to make a request.
newGroupLicensesListResponse ::
  GroupLicensesListResponse
newGroupLicensesListResponse =
  GroupLicensesListResponse {groupLicense = Core.Nothing}

instance Core.FromJSON GroupLicensesListResponse where
  parseJSON =
    Core.withObject
      "GroupLicensesListResponse"
      ( \o ->
          GroupLicensesListResponse
            Core.<$> (o Core..:? "groupLicense" Core..!= Core.mempty)
      )

instance Core.ToJSON GroupLicensesListResponse where
  toJSON GroupLicensesListResponse {..} =
    Core.object
      ( Core.catMaybes
          [("groupLicense" Core..=) Core.<$> groupLicense]
      )

-- | The existence of an Installs resource indicates that an app is installed on a particular device (or that an install is pending). The API can be used to create an install resource using the update method. This triggers the actual install of the app on the device. If the user does not already have an entitlement for the app, then an attempt is made to create one. If this fails (for example, because the app is not free and there is no available license), then the creation of the install fails. The API can also be used to update an installed app. If the update method is used on an existing install, then the app will be updated to the latest available version. Note that it is not possible to force the installation of a specific version of an app: the version code is read-only. If a user installs an app themselves (as permitted by the enterprise), then again an install resource and possibly an entitlement resource are automatically created. The API can also be used to delete an install resource, which triggers the
-- removal of the app from the device. Note that deleting an install does not automatically remove the corresponding entitlement, even if there are no remaining installs. The install resource will also be deleted if the user uninstalls the app themselves.
--
-- /See:/ 'newInstall' smart constructor.
data Install = Install
  { -- | Install state. The state \"installPending\" means that an install request has recently been made and download to the device is in progress. The state \"installed\" means that the app has been installed. This field is read-only.
    installState :: (Core.Maybe Install_InstallState),
    -- | The ID of the product that the install is for. For example, \"app:com.google.android.gm\".
    productId :: (Core.Maybe Core.Text),
    -- | The version of the installed product. Guaranteed to be set only if the install state is \"installed\".
    versionCode :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Install' with the minimum fields required to make a request.
newInstall ::
  Install
newInstall =
  Install
    { installState = Core.Nothing,
      productId = Core.Nothing,
      versionCode = Core.Nothing
    }

instance Core.FromJSON Install where
  parseJSON =
    Core.withObject
      "Install"
      ( \o ->
          Install
            Core.<$> (o Core..:? "installState")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "versionCode")
      )

instance Core.ToJSON Install where
  toJSON Install {..} =
    Core.object
      ( Core.catMaybes
          [ ("installState" Core..=) Core.<$> installState,
            ("productId" Core..=) Core.<$> productId,
            ("versionCode" Core..=) Core.<$> versionCode
          ]
      )

-- | An event generated when an app installation failed on a device
--
-- /See:/ 'newInstallFailureEvent' smart constructor.
data InstallFailureEvent = InstallFailureEvent
  { -- | The Android ID of the device. This field will always be present.
    deviceId :: (Core.Maybe Core.Text),
    -- | Additional details on the failure if applicable.
    failureDetails :: (Core.Maybe Core.Text),
    -- | The reason for the installation failure. This field will always be present.
    failureReason :: (Core.Maybe InstallFailureEvent_FailureReason),
    -- | The id of the product (e.g. \"app:com.google.android.gm\") for which the install failure event occured. This field will always be present.
    productId :: (Core.Maybe Core.Text),
    -- | The ID of the user. This field will always be present.
    userId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstallFailureEvent' with the minimum fields required to make a request.
newInstallFailureEvent ::
  InstallFailureEvent
newInstallFailureEvent =
  InstallFailureEvent
    { deviceId = Core.Nothing,
      failureDetails = Core.Nothing,
      failureReason = Core.Nothing,
      productId = Core.Nothing,
      userId = Core.Nothing
    }

instance Core.FromJSON InstallFailureEvent where
  parseJSON =
    Core.withObject
      "InstallFailureEvent"
      ( \o ->
          InstallFailureEvent
            Core.<$> (o Core..:? "deviceId")
            Core.<*> (o Core..:? "failureDetails")
            Core.<*> (o Core..:? "failureReason")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "userId")
      )

instance Core.ToJSON InstallFailureEvent where
  toJSON InstallFailureEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceId" Core..=) Core.<$> deviceId,
            ("failureDetails" Core..=) Core.<$> failureDetails,
            ("failureReason" Core..=) Core.<$> failureReason,
            ("productId" Core..=) Core.<$> productId,
            ("userId" Core..=) Core.<$> userId
          ]
      )

--
-- /See:/ 'newInstallsListResponse' smart constructor.
newtype InstallsListResponse = InstallsListResponse
  { -- | An installation of an app for a user on a specific device. The existence of an install implies that the user must have an entitlement to the app.
    install :: (Core.Maybe [Install])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstallsListResponse' with the minimum fields required to make a request.
newInstallsListResponse ::
  InstallsListResponse
newInstallsListResponse = InstallsListResponse {install = Core.Nothing}

instance Core.FromJSON InstallsListResponse where
  parseJSON =
    Core.withObject
      "InstallsListResponse"
      ( \o ->
          InstallsListResponse
            Core.<$> (o Core..:? "install" Core..!= Core.mempty)
      )

instance Core.ToJSON InstallsListResponse where
  toJSON InstallsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [("install" Core..=) Core.<$> install]
      )

-- | Represents a keyed app state containing a key, timestamp, severity level, optional description, and optional data.
--
-- /See:/ 'newKeyedAppState' smart constructor.
data KeyedAppState = KeyedAppState
  { -- | Additional field intended for machine-readable data. For example, a number or JSON object. To prevent XSS, we recommend removing any HTML from the data before displaying it.
    data' :: (Core.Maybe Core.Text),
    -- | Key indicating what the app is providing a state for. The content of the key is set by the app\'s developer. To prevent XSS, we recommend removing any HTML from the key before displaying it. This field will always be present.
    key :: (Core.Maybe Core.Text),
    -- | Free-form, human-readable message describing the app state. For example, an error message. To prevent XSS, we recommend removing any HTML from the message before displaying it.
    message :: (Core.Maybe Core.Text),
    -- | Severity of the app state. This field will always be present.
    severity :: (Core.Maybe KeyedAppState_Severity),
    -- | Timestamp of when the app set the state in milliseconds since epoch. This field will always be present.
    stateTimestampMillis :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'KeyedAppState' with the minimum fields required to make a request.
newKeyedAppState ::
  KeyedAppState
newKeyedAppState =
  KeyedAppState
    { data' = Core.Nothing,
      key = Core.Nothing,
      message = Core.Nothing,
      severity = Core.Nothing,
      stateTimestampMillis = Core.Nothing
    }

instance Core.FromJSON KeyedAppState where
  parseJSON =
    Core.withObject
      "KeyedAppState"
      ( \o ->
          KeyedAppState
            Core.<$> (o Core..:? "data")
            Core.<*> (o Core..:? "key")
            Core.<*> (o Core..:? "message")
            Core.<*> (o Core..:? "severity")
            Core.<*> (o Core..:? "stateTimestampMillis")
      )

instance Core.ToJSON KeyedAppState where
  toJSON KeyedAppState {..} =
    Core.object
      ( Core.catMaybes
          [ ("data" Core..=) Core.<$> data',
            ("key" Core..=) Core.<$> key,
            ("message" Core..=) Core.<$> message,
            ("severity" Core..=) Core.<$> severity,
            ("stateTimestampMillis" Core..=) Core.. Core.AsText
              Core.<$> stateTimestampMillis
          ]
      )

-- | A localized string with its locale.
--
-- /See:/ 'newLocalizedText' smart constructor.
data LocalizedText = LocalizedText
  { -- | The BCP47 tag for a locale. (e.g. \"en-US\", \"de\").
    locale :: (Core.Maybe Core.Text),
    -- | The text localized in the associated locale.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocalizedText' with the minimum fields required to make a request.
newLocalizedText ::
  LocalizedText
newLocalizedText = LocalizedText {locale = Core.Nothing, text = Core.Nothing}

instance Core.FromJSON LocalizedText where
  parseJSON =
    Core.withObject
      "LocalizedText"
      ( \o ->
          LocalizedText
            Core.<$> (o Core..:? "locale") Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON LocalizedText where
  toJSON LocalizedText {..} =
    Core.object
      ( Core.catMaybes
          [ ("locale" Core..=) Core.<$> locale,
            ("text" Core..=) Core.<$> text
          ]
      )

-- | Maintenance window for managed Google Play Accounts. This allows Play store to update the apps on the foreground in the designated window.
--
-- /See:/ 'newMaintenanceWindow' smart constructor.
data MaintenanceWindow = MaintenanceWindow
  { -- | Duration of the maintenance window, in milliseconds. The duration must be between 30 minutes and 24 hours (inclusive).
    durationMs :: (Core.Maybe Core.Int64),
    -- | Start time of the maintenance window, in milliseconds after midnight on the device. Windows can span midnight.
    startTimeAfterMidnightMs :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MaintenanceWindow' with the minimum fields required to make a request.
newMaintenanceWindow ::
  MaintenanceWindow
newMaintenanceWindow =
  MaintenanceWindow
    { durationMs = Core.Nothing,
      startTimeAfterMidnightMs = Core.Nothing
    }

instance Core.FromJSON MaintenanceWindow where
  parseJSON =
    Core.withObject
      "MaintenanceWindow"
      ( \o ->
          MaintenanceWindow
            Core.<$> (o Core..:? "durationMs")
            Core.<*> (o Core..:? "startTimeAfterMidnightMs")
      )

instance Core.ToJSON MaintenanceWindow where
  toJSON MaintenanceWindow {..} =
    Core.object
      ( Core.catMaybes
          [ ("durationMs" Core..=) Core.. Core.AsText
              Core.<$> durationMs,
            ("startTimeAfterMidnightMs" Core..=)
              Core.. Core.AsText
              Core.<$> startTimeAfterMidnightMs
          ]
      )

-- | A managed configuration resource contains the set of managed properties defined by the app developer in the app\'s managed configurations schema, as well as any configuration variables defined for the user.
--
-- /See:/ 'newManagedConfiguration' smart constructor.
data ManagedConfiguration = ManagedConfiguration
  { -- | Contains the ID of the managed configuration profile and the set of configuration variables (if any) defined for the user.
    configurationVariables :: (Core.Maybe ConfigurationVariables),
    -- | Deprecated.
    kind :: (Core.Maybe Core.Text),
    -- | The set of managed properties for this configuration.
    managedProperty :: (Core.Maybe [ManagedProperty]),
    -- | The ID of the product that the managed configuration is for, e.g. \"app:com.google.android.gm\".
    productId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedConfiguration' with the minimum fields required to make a request.
newManagedConfiguration ::
  ManagedConfiguration
newManagedConfiguration =
  ManagedConfiguration
    { configurationVariables = Core.Nothing,
      kind = Core.Nothing,
      managedProperty = Core.Nothing,
      productId = Core.Nothing
    }

instance Core.FromJSON ManagedConfiguration where
  parseJSON =
    Core.withObject
      "ManagedConfiguration"
      ( \o ->
          ManagedConfiguration
            Core.<$> (o Core..:? "configurationVariables")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "managedProperty" Core..!= Core.mempty)
            Core.<*> (o Core..:? "productId")
      )

instance Core.ToJSON ManagedConfiguration where
  toJSON ManagedConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("configurationVariables" Core..=)
              Core.<$> configurationVariables,
            ("kind" Core..=) Core.<$> kind,
            ("managedProperty" Core..=) Core.<$> managedProperty,
            ("productId" Core..=) Core.<$> productId
          ]
      )

--
-- /See:/ 'newManagedConfigurationsForDeviceListResponse' smart constructor.
newtype ManagedConfigurationsForDeviceListResponse = ManagedConfigurationsForDeviceListResponse
  { -- | A managed configuration for an app on a specific device.
    managedConfigurationForDevice :: (Core.Maybe [ManagedConfiguration])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedConfigurationsForDeviceListResponse' with the minimum fields required to make a request.
newManagedConfigurationsForDeviceListResponse ::
  ManagedConfigurationsForDeviceListResponse
newManagedConfigurationsForDeviceListResponse =
  ManagedConfigurationsForDeviceListResponse
    { managedConfigurationForDevice = Core.Nothing
    }

instance
  Core.FromJSON
    ManagedConfigurationsForDeviceListResponse
  where
  parseJSON =
    Core.withObject
      "ManagedConfigurationsForDeviceListResponse"
      ( \o ->
          ManagedConfigurationsForDeviceListResponse
            Core.<$> ( o Core..:? "managedConfigurationForDevice"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    ManagedConfigurationsForDeviceListResponse
  where
  toJSON ManagedConfigurationsForDeviceListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("managedConfigurationForDevice" Core..=)
              Core.<$> managedConfigurationForDevice
          ]
      )

--
-- /See:/ 'newManagedConfigurationsForUserListResponse' smart constructor.
newtype ManagedConfigurationsForUserListResponse = ManagedConfigurationsForUserListResponse
  { -- | A managed configuration for an app for a specific user.
    managedConfigurationForUser :: (Core.Maybe [ManagedConfiguration])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedConfigurationsForUserListResponse' with the minimum fields required to make a request.
newManagedConfigurationsForUserListResponse ::
  ManagedConfigurationsForUserListResponse
newManagedConfigurationsForUserListResponse =
  ManagedConfigurationsForUserListResponse
    { managedConfigurationForUser = Core.Nothing
    }

instance
  Core.FromJSON
    ManagedConfigurationsForUserListResponse
  where
  parseJSON =
    Core.withObject
      "ManagedConfigurationsForUserListResponse"
      ( \o ->
          ManagedConfigurationsForUserListResponse
            Core.<$> ( o Core..:? "managedConfigurationForUser"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    ManagedConfigurationsForUserListResponse
  where
  toJSON ManagedConfigurationsForUserListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("managedConfigurationForUser" Core..=)
              Core.<$> managedConfigurationForUser
          ]
      )

-- | A managed configurations settings resource contains the set of managed properties that have been configured for an Android app to be applied to a set of users. The app\'s developer would have defined configurable properties in the managed configurations schema.
--
-- /See:/ 'newManagedConfigurationsSettings' smart constructor.
data ManagedConfigurationsSettings = ManagedConfigurationsSettings
  { -- | The last updated time of the managed configuration settings in milliseconds since 1970-01-01T00:00:00Z.
    lastUpdatedTimestampMillis :: (Core.Maybe Core.Int64),
    -- | The ID of the managed configurations settings.
    mcmId :: (Core.Maybe Core.Text),
    -- | The name of the managed configurations settings.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedConfigurationsSettings' with the minimum fields required to make a request.
newManagedConfigurationsSettings ::
  ManagedConfigurationsSettings
newManagedConfigurationsSettings =
  ManagedConfigurationsSettings
    { lastUpdatedTimestampMillis = Core.Nothing,
      mcmId = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON ManagedConfigurationsSettings where
  parseJSON =
    Core.withObject
      "ManagedConfigurationsSettings"
      ( \o ->
          ManagedConfigurationsSettings
            Core.<$> (o Core..:? "lastUpdatedTimestampMillis")
            Core.<*> (o Core..:? "mcmId")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON ManagedConfigurationsSettings where
  toJSON ManagedConfigurationsSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("lastUpdatedTimestampMillis" Core..=)
              Core.. Core.AsText
              Core.<$> lastUpdatedTimestampMillis,
            ("mcmId" Core..=) Core.<$> mcmId,
            ("name" Core..=) Core.<$> name
          ]
      )

--
-- /See:/ 'newManagedConfigurationsSettingsListResponse' smart constructor.
newtype ManagedConfigurationsSettingsListResponse = ManagedConfigurationsSettingsListResponse
  { -- | A managed configurations settings for an app that may be assigned to a group of users in an enterprise.
    managedConfigurationsSettings :: (Core.Maybe [ManagedConfigurationsSettings])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedConfigurationsSettingsListResponse' with the minimum fields required to make a request.
newManagedConfigurationsSettingsListResponse ::
  ManagedConfigurationsSettingsListResponse
newManagedConfigurationsSettingsListResponse =
  ManagedConfigurationsSettingsListResponse
    { managedConfigurationsSettings = Core.Nothing
    }

instance
  Core.FromJSON
    ManagedConfigurationsSettingsListResponse
  where
  parseJSON =
    Core.withObject
      "ManagedConfigurationsSettingsListResponse"
      ( \o ->
          ManagedConfigurationsSettingsListResponse
            Core.<$> ( o Core..:? "managedConfigurationsSettings"
                         Core..!= Core.mempty
                     )
      )

instance
  Core.ToJSON
    ManagedConfigurationsSettingsListResponse
  where
  toJSON ManagedConfigurationsSettingsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("managedConfigurationsSettings" Core..=)
              Core.<$> managedConfigurationsSettings
          ]
      )

-- | A managed property of a managed configuration. The property must match one of the properties in the app restrictions schema of the product. Exactly one of the value fields must be populated, and it must match the property\'s type in the app restrictions schema.
--
-- /See:/ 'newManagedProperty' smart constructor.
data ManagedProperty = ManagedProperty
  { -- | The unique key that identifies the property.
    key :: (Core.Maybe Core.Text),
    -- | The boolean value - this will only be present if type of the property is bool.
    valueBool :: (Core.Maybe Core.Bool),
    -- | The bundle of managed properties - this will only be present if type of the property is bundle.
    valueBundle :: (Core.Maybe ManagedPropertyBundle),
    -- | The list of bundles of properties - this will only be present if type of the property is bundle_array.
    valueBundleArray :: (Core.Maybe [ManagedPropertyBundle]),
    -- | The integer value - this will only be present if type of the property is integer.
    valueInteger :: (Core.Maybe Core.Int32),
    -- | The string value - this will only be present if type of the property is string, choice or hidden.
    valueString :: (Core.Maybe Core.Text),
    -- | The list of string values - this will only be present if type of the property is multiselect.
    valueStringArray :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedProperty' with the minimum fields required to make a request.
newManagedProperty ::
  ManagedProperty
newManagedProperty =
  ManagedProperty
    { key = Core.Nothing,
      valueBool = Core.Nothing,
      valueBundle = Core.Nothing,
      valueBundleArray = Core.Nothing,
      valueInteger = Core.Nothing,
      valueString = Core.Nothing,
      valueStringArray = Core.Nothing
    }

instance Core.FromJSON ManagedProperty where
  parseJSON =
    Core.withObject
      "ManagedProperty"
      ( \o ->
          ManagedProperty
            Core.<$> (o Core..:? "key")
            Core.<*> (o Core..:? "valueBool")
            Core.<*> (o Core..:? "valueBundle")
            Core.<*> (o Core..:? "valueBundleArray" Core..!= Core.mempty)
            Core.<*> (o Core..:? "valueInteger")
            Core.<*> (o Core..:? "valueString")
            Core.<*> (o Core..:? "valueStringArray" Core..!= Core.mempty)
      )

instance Core.ToJSON ManagedProperty where
  toJSON ManagedProperty {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("valueBool" Core..=) Core.<$> valueBool,
            ("valueBundle" Core..=) Core.<$> valueBundle,
            ("valueBundleArray" Core..=)
              Core.<$> valueBundleArray,
            ("valueInteger" Core..=) Core.<$> valueInteger,
            ("valueString" Core..=) Core.<$> valueString,
            ("valueStringArray" Core..=)
              Core.<$> valueStringArray
          ]
      )

-- | A bundle of managed properties.
--
-- /See:/ 'newManagedPropertyBundle' smart constructor.
newtype ManagedPropertyBundle = ManagedPropertyBundle
  { -- | The list of managed properties.
    managedProperty :: (Core.Maybe [ManagedProperty])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManagedPropertyBundle' with the minimum fields required to make a request.
newManagedPropertyBundle ::
  ManagedPropertyBundle
newManagedPropertyBundle =
  ManagedPropertyBundle {managedProperty = Core.Nothing}

instance Core.FromJSON ManagedPropertyBundle where
  parseJSON =
    Core.withObject
      "ManagedPropertyBundle"
      ( \o ->
          ManagedPropertyBundle
            Core.<$> (o Core..:? "managedProperty" Core..!= Core.mempty)
      )

instance Core.ToJSON ManagedPropertyBundle where
  toJSON ManagedPropertyBundle {..} =
    Core.object
      ( Core.catMaybes
          [ ("managedProperty" Core..=)
              Core.<$> managedProperty
          ]
      )

-- | An event generated when a new device is ready to be managed.
--
-- /See:/ 'newNewDeviceEvent' smart constructor.
data NewDeviceEvent = NewDeviceEvent
  { -- | The Android ID of the device. This field will always be present.
    deviceId :: (Core.Maybe Core.Text),
    -- | Policy app on the device.
    dpcPackageName :: (Core.Maybe Core.Text),
    -- | Identifies the extent to which the device is controlled by an Android EMM in various deployment configurations. Possible values include: - \"managedDevice\", a device where the DPC is set as device owner, - \"managedProfile\", a device where the DPC is set as profile owner.
    managementType :: (Core.Maybe NewDeviceEvent_ManagementType),
    -- | The ID of the user. This field will always be present.
    userId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NewDeviceEvent' with the minimum fields required to make a request.
newNewDeviceEvent ::
  NewDeviceEvent
newNewDeviceEvent =
  NewDeviceEvent
    { deviceId = Core.Nothing,
      dpcPackageName = Core.Nothing,
      managementType = Core.Nothing,
      userId = Core.Nothing
    }

instance Core.FromJSON NewDeviceEvent where
  parseJSON =
    Core.withObject
      "NewDeviceEvent"
      ( \o ->
          NewDeviceEvent
            Core.<$> (o Core..:? "deviceId")
            Core.<*> (o Core..:? "dpcPackageName")
            Core.<*> (o Core..:? "managementType")
            Core.<*> (o Core..:? "userId")
      )

instance Core.ToJSON NewDeviceEvent where
  toJSON NewDeviceEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceId" Core..=) Core.<$> deviceId,
            ("dpcPackageName" Core..=) Core.<$> dpcPackageName,
            ("managementType" Core..=) Core.<$> managementType,
            ("userId" Core..=) Core.<$> userId
          ]
      )

-- | An event generated when new permissions are added to an app.
--
-- /See:/ 'newNewPermissionsEvent' smart constructor.
data NewPermissionsEvent = NewPermissionsEvent
  { -- | The set of permissions that the enterprise admin has already approved for this application. Use Permissions.Get on the EMM API to retrieve details about these permissions.
    approvedPermissions :: (Core.Maybe [Core.Text]),
    -- | The id of the product (e.g. \"app:com.google.android.gm\") for which new permissions were added. This field will always be present.
    productId :: (Core.Maybe Core.Text),
    -- | The set of permissions that the app is currently requesting. Use Permissions.Get on the EMM API to retrieve details about these permissions.
    requestedPermissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NewPermissionsEvent' with the minimum fields required to make a request.
newNewPermissionsEvent ::
  NewPermissionsEvent
newNewPermissionsEvent =
  NewPermissionsEvent
    { approvedPermissions = Core.Nothing,
      productId = Core.Nothing,
      requestedPermissions = Core.Nothing
    }

instance Core.FromJSON NewPermissionsEvent where
  parseJSON =
    Core.withObject
      "NewPermissionsEvent"
      ( \o ->
          NewPermissionsEvent
            Core.<$> ( o Core..:? "approvedPermissions"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "productId")
            Core.<*> ( o Core..:? "requestedPermissions"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON NewPermissionsEvent where
  toJSON NewPermissionsEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("approvedPermissions" Core..=)
              Core.<$> approvedPermissions,
            ("productId" Core..=) Core.<$> productId,
            ("requestedPermissions" Core..=)
              Core.<$> requestedPermissions
          ]
      )

-- | A notification of one event relating to an enterprise.
--
-- /See:/ 'newNotification' smart constructor.
data Notification = Notification
  { -- | Notifications about new app restrictions schema changes.
    appRestrictionsSchemaChangeEvent :: (Core.Maybe AppRestrictionsSchemaChangeEvent),
    -- | Notifications about app updates.
    appUpdateEvent :: (Core.Maybe AppUpdateEvent),
    -- | Notifications about device report updates.
    deviceReportUpdateEvent :: (Core.Maybe DeviceReportUpdateEvent),
    -- | The ID of the enterprise for which the notification is sent. This will always be present.
    enterpriseId :: (Core.Maybe Core.Text),
    -- | Notifications about an app installation failure.
    installFailureEvent :: (Core.Maybe InstallFailureEvent),
    -- | Notifications about new devices.
    newDeviceEvent' :: (Core.Maybe NewDeviceEvent),
    -- | Notifications about new app permissions.
    newPermissionsEvent' :: (Core.Maybe NewPermissionsEvent),
    -- | Type of the notification.
    notificationType :: (Core.Maybe Notification_NotificationType),
    -- | Notifications about changes to a product\'s approval status.
    productApprovalEvent :: (Core.Maybe ProductApprovalEvent),
    -- | Notifications about product availability changes.
    productAvailabilityChangeEvent :: (Core.Maybe ProductAvailabilityChangeEvent),
    -- | The time when the notification was published in milliseconds since 1970-01-01T00:00:00Z. This will always be present.
    timestampMillis :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Notification' with the minimum fields required to make a request.
newNotification ::
  Notification
newNotification =
  Notification
    { appRestrictionsSchemaChangeEvent = Core.Nothing,
      appUpdateEvent = Core.Nothing,
      deviceReportUpdateEvent = Core.Nothing,
      enterpriseId = Core.Nothing,
      installFailureEvent = Core.Nothing,
      newDeviceEvent' = Core.Nothing,
      newPermissionsEvent' = Core.Nothing,
      notificationType = Core.Nothing,
      productApprovalEvent = Core.Nothing,
      productAvailabilityChangeEvent = Core.Nothing,
      timestampMillis = Core.Nothing
    }

instance Core.FromJSON Notification where
  parseJSON =
    Core.withObject
      "Notification"
      ( \o ->
          Notification
            Core.<$> (o Core..:? "appRestrictionsSchemaChangeEvent")
            Core.<*> (o Core..:? "appUpdateEvent")
            Core.<*> (o Core..:? "deviceReportUpdateEvent")
            Core.<*> (o Core..:? "enterpriseId")
            Core.<*> (o Core..:? "installFailureEvent")
            Core.<*> (o Core..:? "newDeviceEvent")
            Core.<*> (o Core..:? "newPermissionsEvent")
            Core.<*> (o Core..:? "notificationType")
            Core.<*> (o Core..:? "productApprovalEvent")
            Core.<*> (o Core..:? "productAvailabilityChangeEvent")
            Core.<*> (o Core..:? "timestampMillis")
      )

instance Core.ToJSON Notification where
  toJSON Notification {..} =
    Core.object
      ( Core.catMaybes
          [ ("appRestrictionsSchemaChangeEvent" Core..=)
              Core.<$> appRestrictionsSchemaChangeEvent,
            ("appUpdateEvent" Core..=) Core.<$> appUpdateEvent,
            ("deviceReportUpdateEvent" Core..=)
              Core.<$> deviceReportUpdateEvent,
            ("enterpriseId" Core..=) Core.<$> enterpriseId,
            ("installFailureEvent" Core..=)
              Core.<$> installFailureEvent,
            ("newDeviceEvent" Core..=) Core.<$> newDeviceEvent',
            ("newPermissionsEvent" Core..=)
              Core.<$> newPermissionsEvent',
            ("notificationType" Core..=)
              Core.<$> notificationType,
            ("productApprovalEvent" Core..=)
              Core.<$> productApprovalEvent,
            ("productAvailabilityChangeEvent" Core..=)
              Core.<$> productAvailabilityChangeEvent,
            ("timestampMillis" Core..=) Core.. Core.AsText
              Core.<$> timestampMillis
          ]
      )

-- | A resource returned by the PullNotificationSet API, which contains a collection of notifications for enterprises associated with the service account authenticated for the request.
--
-- /See:/ 'newNotificationSet' smart constructor.
data NotificationSet = NotificationSet
  { -- | The notifications received, or empty if no notifications are present.
    notification :: (Core.Maybe [Notification]),
    -- | The notification set ID, required to mark the notification as received with the Enterprises.AcknowledgeNotification API. This will be omitted if no notifications are present.
    notificationSetId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NotificationSet' with the minimum fields required to make a request.
newNotificationSet ::
  NotificationSet
newNotificationSet =
  NotificationSet
    { notification = Core.Nothing,
      notificationSetId = Core.Nothing
    }

instance Core.FromJSON NotificationSet where
  parseJSON =
    Core.withObject
      "NotificationSet"
      ( \o ->
          NotificationSet
            Core.<$> (o Core..:? "notification" Core..!= Core.mempty)
            Core.<*> (o Core..:? "notificationSetId")
      )

instance Core.ToJSON NotificationSet where
  toJSON NotificationSet {..} =
    Core.object
      ( Core.catMaybes
          [ ("notification" Core..=) Core.<$> notification,
            ("notificationSetId" Core..=)
              Core.<$> notificationSetId
          ]
      )

-- | Information about the current page. List operations that supports paging return only one \"page\" of results. This protocol buffer message describes the page that has been returned.
--
-- /See:/ 'newPageInfo' smart constructor.
data PageInfo = PageInfo
  { -- | Maximum number of results returned in one page. ! The number of results included in the API response.
    resultPerPage :: (Core.Maybe Core.Int32),
    -- | Index of the first result returned in the current page.
    startIndex :: (Core.Maybe Core.Int32),
    -- | Total number of results available on the backend ! The total number of results in the result set.
    totalResults :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PageInfo' with the minimum fields required to make a request.
newPageInfo ::
  PageInfo
newPageInfo =
  PageInfo
    { resultPerPage = Core.Nothing,
      startIndex = Core.Nothing,
      totalResults = Core.Nothing
    }

instance Core.FromJSON PageInfo where
  parseJSON =
    Core.withObject
      "PageInfo"
      ( \o ->
          PageInfo
            Core.<$> (o Core..:? "resultPerPage")
            Core.<*> (o Core..:? "startIndex")
            Core.<*> (o Core..:? "totalResults")
      )

instance Core.ToJSON PageInfo where
  toJSON PageInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("resultPerPage" Core..=) Core.<$> resultPerPage,
            ("startIndex" Core..=) Core.<$> startIndex,
            ("totalResults" Core..=) Core.<$> totalResults
          ]
      )

-- | A Permissions resource represents some extra capability, to be granted to an Android app, which requires explicit consent. An enterprise admin must consent to these permissions on behalf of their users before an entitlement for the app can be created. The permissions collection is read-only. The information provided for each permission (localized name and description) is intended to be used in the MDM user interface when obtaining consent from the enterprise.
--
-- /See:/ 'newPermission' smart constructor.
data Permission = Permission
  { -- | A longer description of the Permissions resource, giving more details of what it affects.
    description :: (Core.Maybe Core.Text),
    -- | The name of the permission.
    name :: (Core.Maybe Core.Text),
    -- | An opaque string uniquely identifying the permission.
    permissionId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Permission' with the minimum fields required to make a request.
newPermission ::
  Permission
newPermission =
  Permission
    { description = Core.Nothing,
      name = Core.Nothing,
      permissionId = Core.Nothing
    }

instance Core.FromJSON Permission where
  parseJSON =
    Core.withObject
      "Permission"
      ( \o ->
          Permission
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "permissionId")
      )

instance Core.ToJSON Permission where
  toJSON Permission {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("name" Core..=) Core.<$> name,
            ("permissionId" Core..=) Core.<$> permissionId
          ]
      )

-- | The device policy for a given managed device.
--
-- /See:/ 'newPolicy' smart constructor.
data Policy = Policy
  { -- | Deprecated. Use autoUpdateMode instead. When autoUpdateMode is set to AUTO/UPDATE/POSTPONED or AUTO/UPDATE/HIGH_PRIORITY, this field has no effect. \"choiceToTheUser\" allows the device\'s user to configure the app update policy. \"always\" enables auto updates. \"never\" disables auto updates. \"wifiOnly\" enables auto updates only when the device is connected to wifi.
    autoUpdatePolicy :: (Core.Maybe Policy_AutoUpdatePolicy),
    -- | Whether the device reports app states to the EMM. The default value is \"deviceReportDisabled\".
    deviceReportPolicy :: (Core.Maybe Policy_DeviceReportPolicy),
    -- | The maintenance window defining when apps running in the foreground should be updated.
    maintenanceWindow :: (Core.Maybe MaintenanceWindow),
    -- | The availability granted to the device for the specified products. \"all\" gives the device access to all products, regardless of approval status. \"all\" does not enable automatic visibility of \"alpha\" or \"beta\" tracks. \"whitelist\" grants the device access the products specified in productPolicy[]. Only products that are approved or products that were previously approved (products with revoked approval) by the enterprise can be whitelisted. If no value is provided, the availability set at the user level is applied by default.
    productAvailabilityPolicy :: (Core.Maybe Policy_ProductAvailabilityPolicy),
    -- | The list of product policies. The productAvailabilityPolicy needs to be set to WHITELIST or ALL for the product policies to be applied.
    productPolicy :: (Core.Maybe [ProductPolicy])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Policy' with the minimum fields required to make a request.
newPolicy ::
  Policy
newPolicy =
  Policy
    { autoUpdatePolicy = Core.Nothing,
      deviceReportPolicy = Core.Nothing,
      maintenanceWindow = Core.Nothing,
      productAvailabilityPolicy = Core.Nothing,
      productPolicy = Core.Nothing
    }

instance Core.FromJSON Policy where
  parseJSON =
    Core.withObject
      "Policy"
      ( \o ->
          Policy
            Core.<$> (o Core..:? "autoUpdatePolicy")
            Core.<*> (o Core..:? "deviceReportPolicy")
            Core.<*> (o Core..:? "maintenanceWindow")
            Core.<*> (o Core..:? "productAvailabilityPolicy")
            Core.<*> (o Core..:? "productPolicy" Core..!= Core.mempty)
      )

instance Core.ToJSON Policy where
  toJSON Policy {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoUpdatePolicy" Core..=)
              Core.<$> autoUpdatePolicy,
            ("deviceReportPolicy" Core..=)
              Core.<$> deviceReportPolicy,
            ("maintenanceWindow" Core..=)
              Core.<$> maintenanceWindow,
            ("productAvailabilityPolicy" Core..=)
              Core.<$> productAvailabilityPolicy,
            ("productPolicy" Core..=) Core.<$> productPolicy
          ]
      )

-- | A Products resource represents an app in the Google Play store that is available to at least some users in the enterprise. (Some apps are restricted to a single enterprise, and no information about them is made available outside that enterprise.) The information provided for each product (localized name, icon, link to the full Google Play details page) is intended to allow a basic representation of the product within an EMM user interface.
--
-- /See:/ 'newProduct' smart constructor.
data Product = Product
  { -- | The tracks visible to the enterprise.
    appTracks :: (Core.Maybe [TrackInfo]),
    -- | App versions currently available for this product.
    appVersion :: (Core.Maybe [AppVersion]),
    -- | The name of the author of the product (for example, the app developer).
    authorName :: (Core.Maybe Core.Text),
    -- | The countries which this app is available in.
    availableCountries :: (Core.Maybe [Core.Text]),
    -- | Deprecated, use appTracks instead.
    availableTracks :: (Core.Maybe [Product_AvailableTracksItem]),
    -- | The app category (e.g. RACING, SOCIAL, etc.)
    category :: (Core.Maybe Core.Text),
    -- | The content rating for this app.
    contentRating :: (Core.Maybe Product_ContentRating),
    -- | The localized promotional description, if available.
    description :: (Core.Maybe Core.Text),
    -- | A link to the (consumer) Google Play details page for the product.
    detailsUrl :: (Core.Maybe Core.Text),
    -- | How and to whom the package is made available. The value publicGoogleHosted means that the package is available through the Play store and not restricted to a specific enterprise. The value privateGoogleHosted means that the package is a private app (restricted to an enterprise) but hosted by Google. The value privateSelfHosted means that the package is a private app (restricted to an enterprise) and is privately hosted.
    distributionChannel :: (Core.Maybe Product_DistributionChannel),
    -- | Noteworthy features (if any) of this product.
    features :: (Core.Maybe [Product_FeaturesItem]),
    -- | A link to an image that can be used as an icon for the product. This image is suitable for use at up to 512px x 512px.
    iconUrl :: (Core.Maybe Core.Text),
    -- | The approximate time (within 7 days) the app was last published, expressed in milliseconds since epoch.
    lastUpdatedTimestampMillis :: (Core.Maybe Core.Int64),
    -- | The minimum Android SDK necessary to run the app.
    minAndroidSdkVersion :: (Core.Maybe Core.Int32),
    -- | A list of permissions required by the app.
    permissions :: (Core.Maybe [ProductPermission]),
    -- | A string of the form /app:\<package name>/. For example, app:com.google.android.gm represents the Gmail app.
    productId :: (Core.Maybe Core.Text),
    -- | Whether this product is free, free with in-app purchases, or paid. If the pricing is unknown, this means the product is not generally available anymore (even though it might still be available to people who own it).
    productPricing :: (Core.Maybe Product_ProductPricing),
    -- | A description of the recent changes made to the app.
    recentChanges :: (Core.Maybe Core.Text),
    -- | Deprecated.
    requiresContainerApp :: (Core.Maybe Core.Bool),
    -- | A list of screenshot links representing the app.
    screenshotUrls :: (Core.Maybe [Core.Text]),
    -- | The certificate used to sign this product.
    signingCertificate :: (Core.Maybe ProductSigningCertificate),
    -- | A link to a smaller image that can be used as an icon for the product. This image is suitable for use at up to 128px x 128px.
    smallIconUrl :: (Core.Maybe Core.Text),
    -- | The name of the product.
    title :: (Core.Maybe Core.Text),
    -- | A link to the managed Google Play details page for the product, for use by an Enterprise admin.
    workDetailsUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Product' with the minimum fields required to make a request.
newProduct ::
  Product
newProduct =
  Product
    { appTracks = Core.Nothing,
      appVersion = Core.Nothing,
      authorName = Core.Nothing,
      availableCountries = Core.Nothing,
      availableTracks = Core.Nothing,
      category = Core.Nothing,
      contentRating = Core.Nothing,
      description = Core.Nothing,
      detailsUrl = Core.Nothing,
      distributionChannel = Core.Nothing,
      features = Core.Nothing,
      iconUrl = Core.Nothing,
      lastUpdatedTimestampMillis = Core.Nothing,
      minAndroidSdkVersion = Core.Nothing,
      permissions = Core.Nothing,
      productId = Core.Nothing,
      productPricing = Core.Nothing,
      recentChanges = Core.Nothing,
      requiresContainerApp = Core.Nothing,
      screenshotUrls = Core.Nothing,
      signingCertificate = Core.Nothing,
      smallIconUrl = Core.Nothing,
      title = Core.Nothing,
      workDetailsUrl = Core.Nothing
    }

instance Core.FromJSON Product where
  parseJSON =
    Core.withObject
      "Product"
      ( \o ->
          Product
            Core.<$> (o Core..:? "appTracks" Core..!= Core.mempty)
            Core.<*> (o Core..:? "appVersion" Core..!= Core.mempty)
            Core.<*> (o Core..:? "authorName")
            Core.<*> ( o Core..:? "availableCountries"
                         Core..!= Core.mempty
                     )
            Core.<*> (o Core..:? "availableTracks" Core..!= Core.mempty)
            Core.<*> (o Core..:? "category")
            Core.<*> (o Core..:? "contentRating")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "detailsUrl")
            Core.<*> (o Core..:? "distributionChannel")
            Core.<*> (o Core..:? "features" Core..!= Core.mempty)
            Core.<*> (o Core..:? "iconUrl")
            Core.<*> (o Core..:? "lastUpdatedTimestampMillis")
            Core.<*> (o Core..:? "minAndroidSdkVersion")
            Core.<*> (o Core..:? "permissions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "productPricing")
            Core.<*> (o Core..:? "recentChanges")
            Core.<*> (o Core..:? "requiresContainerApp")
            Core.<*> (o Core..:? "screenshotUrls" Core..!= Core.mempty)
            Core.<*> (o Core..:? "signingCertificate")
            Core.<*> (o Core..:? "smallIconUrl")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "workDetailsUrl")
      )

instance Core.ToJSON Product where
  toJSON Product {..} =
    Core.object
      ( Core.catMaybes
          [ ("appTracks" Core..=) Core.<$> appTracks,
            ("appVersion" Core..=) Core.<$> appVersion,
            ("authorName" Core..=) Core.<$> authorName,
            ("availableCountries" Core..=)
              Core.<$> availableCountries,
            ("availableTracks" Core..=) Core.<$> availableTracks,
            ("category" Core..=) Core.<$> category,
            ("contentRating" Core..=) Core.<$> contentRating,
            ("description" Core..=) Core.<$> description,
            ("detailsUrl" Core..=) Core.<$> detailsUrl,
            ("distributionChannel" Core..=)
              Core.<$> distributionChannel,
            ("features" Core..=) Core.<$> features,
            ("iconUrl" Core..=) Core.<$> iconUrl,
            ("lastUpdatedTimestampMillis" Core..=)
              Core.. Core.AsText
              Core.<$> lastUpdatedTimestampMillis,
            ("minAndroidSdkVersion" Core..=)
              Core.<$> minAndroidSdkVersion,
            ("permissions" Core..=) Core.<$> permissions,
            ("productId" Core..=) Core.<$> productId,
            ("productPricing" Core..=) Core.<$> productPricing,
            ("recentChanges" Core..=) Core.<$> recentChanges,
            ("requiresContainerApp" Core..=)
              Core.<$> requiresContainerApp,
            ("screenshotUrls" Core..=) Core.<$> screenshotUrls,
            ("signingCertificate" Core..=)
              Core.<$> signingCertificate,
            ("smallIconUrl" Core..=) Core.<$> smallIconUrl,
            ("title" Core..=) Core.<$> title,
            ("workDetailsUrl" Core..=) Core.<$> workDetailsUrl
          ]
      )

-- | An event generated when a product\'s approval status is changed.
--
-- /See:/ 'newProductApprovalEvent' smart constructor.
data ProductApprovalEvent = ProductApprovalEvent
  { -- | Whether the product was approved or unapproved. This field will always be present.
    approved :: (Core.Maybe ProductApprovalEvent_Approved),
    -- | The id of the product (e.g. \"app:com.google.android.gm\") for which the approval status has changed. This field will always be present.
    productId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductApprovalEvent' with the minimum fields required to make a request.
newProductApprovalEvent ::
  ProductApprovalEvent
newProductApprovalEvent =
  ProductApprovalEvent {approved = Core.Nothing, productId = Core.Nothing}

instance Core.FromJSON ProductApprovalEvent where
  parseJSON =
    Core.withObject
      "ProductApprovalEvent"
      ( \o ->
          ProductApprovalEvent
            Core.<$> (o Core..:? "approved")
            Core.<*> (o Core..:? "productId")
      )

instance Core.ToJSON ProductApprovalEvent where
  toJSON ProductApprovalEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("approved" Core..=) Core.<$> approved,
            ("productId" Core..=) Core.<$> productId
          ]
      )

-- | An event generated whenever a product\'s availability changes.
--
-- /See:/ 'newProductAvailabilityChangeEvent' smart constructor.
data ProductAvailabilityChangeEvent = ProductAvailabilityChangeEvent
  { -- | The new state of the product. This field will always be present.
    availabilityStatus :: (Core.Maybe ProductAvailabilityChangeEvent_AvailabilityStatus),
    -- | The id of the product (e.g. \"app:com.google.android.gm\") for which the product availability changed. This field will always be present.
    productId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductAvailabilityChangeEvent' with the minimum fields required to make a request.
newProductAvailabilityChangeEvent ::
  ProductAvailabilityChangeEvent
newProductAvailabilityChangeEvent =
  ProductAvailabilityChangeEvent
    { availabilityStatus = Core.Nothing,
      productId = Core.Nothing
    }

instance Core.FromJSON ProductAvailabilityChangeEvent where
  parseJSON =
    Core.withObject
      "ProductAvailabilityChangeEvent"
      ( \o ->
          ProductAvailabilityChangeEvent
            Core.<$> (o Core..:? "availabilityStatus")
            Core.<*> (o Core..:? "productId")
      )

instance Core.ToJSON ProductAvailabilityChangeEvent where
  toJSON ProductAvailabilityChangeEvent {..} =
    Core.object
      ( Core.catMaybes
          [ ("availabilityStatus" Core..=)
              Core.<$> availabilityStatus,
            ("productId" Core..=) Core.<$> productId
          ]
      )

-- | A product permissions resource represents the set of permissions required by a specific app and whether or not they have been accepted by an enterprise admin. The API can be used to read the set of permissions, and also to update the set to indicate that permissions have been accepted.
--
-- /See:/ 'newProductPermission' smart constructor.
data ProductPermission = ProductPermission
  { -- | An opaque string uniquely identifying the permission.
    permissionId :: (Core.Maybe Core.Text),
    -- | Whether the permission has been accepted or not.
    state :: (Core.Maybe ProductPermission_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductPermission' with the minimum fields required to make a request.
newProductPermission ::
  ProductPermission
newProductPermission =
  ProductPermission {permissionId = Core.Nothing, state = Core.Nothing}

instance Core.FromJSON ProductPermission where
  parseJSON =
    Core.withObject
      "ProductPermission"
      ( \o ->
          ProductPermission
            Core.<$> (o Core..:? "permissionId")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON ProductPermission where
  toJSON ProductPermission {..} =
    Core.object
      ( Core.catMaybes
          [ ("permissionId" Core..=) Core.<$> permissionId,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Information about the permissions required by a specific app and whether they have been accepted by the enterprise.
--
-- /See:/ 'newProductPermissions' smart constructor.
data ProductPermissions = ProductPermissions
  { -- | The permissions required by the app.
    permission :: (Core.Maybe [ProductPermission]),
    -- | The ID of the app that the permissions relate to, e.g. \"app:com.google.android.gm\".
    productId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductPermissions' with the minimum fields required to make a request.
newProductPermissions ::
  ProductPermissions
newProductPermissions =
  ProductPermissions {permission = Core.Nothing, productId = Core.Nothing}

instance Core.FromJSON ProductPermissions where
  parseJSON =
    Core.withObject
      "ProductPermissions"
      ( \o ->
          ProductPermissions
            Core.<$> (o Core..:? "permission" Core..!= Core.mempty)
            Core.<*> (o Core..:? "productId")
      )

instance Core.ToJSON ProductPermissions where
  toJSON ProductPermissions {..} =
    Core.object
      ( Core.catMaybes
          [ ("permission" Core..=) Core.<$> permission,
            ("productId" Core..=) Core.<$> productId
          ]
      )

-- | The policy for a product.
--
-- /See:/ 'newProductPolicy' smart constructor.
data ProductPolicy = ProductPolicy
  { -- | The auto-install policy for the product.
    autoInstallPolicy :: (Core.Maybe AutoInstallPolicy),
    -- | The auto-update mode for the product.
    autoUpdateMode :: (Core.Maybe ProductPolicy_AutoUpdateMode),
    -- | The managed configuration for the product.
    managedConfiguration :: (Core.Maybe ManagedConfiguration),
    -- | The ID of the product. For example, \"app:com.google.android.gm\".
    productId :: (Core.Maybe Core.Text),
    -- | Grants the device visibility to the specified product release track(s), identified by trackIds. The list of release tracks of a product can be obtained by calling Products.Get.
    trackIds :: (Core.Maybe [Core.Text]),
    -- | Deprecated. Use trackIds instead.
    tracks :: (Core.Maybe [ProductPolicy_TracksItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductPolicy' with the minimum fields required to make a request.
newProductPolicy ::
  ProductPolicy
newProductPolicy =
  ProductPolicy
    { autoInstallPolicy = Core.Nothing,
      autoUpdateMode = Core.Nothing,
      managedConfiguration = Core.Nothing,
      productId = Core.Nothing,
      trackIds = Core.Nothing,
      tracks = Core.Nothing
    }

instance Core.FromJSON ProductPolicy where
  parseJSON =
    Core.withObject
      "ProductPolicy"
      ( \o ->
          ProductPolicy
            Core.<$> (o Core..:? "autoInstallPolicy")
            Core.<*> (o Core..:? "autoUpdateMode")
            Core.<*> (o Core..:? "managedConfiguration")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "trackIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "tracks" Core..!= Core.mempty)
      )

instance Core.ToJSON ProductPolicy where
  toJSON ProductPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoInstallPolicy" Core..=)
              Core.<$> autoInstallPolicy,
            ("autoUpdateMode" Core..=) Core.<$> autoUpdateMode,
            ("managedConfiguration" Core..=)
              Core.<$> managedConfiguration,
            ("productId" Core..=) Core.<$> productId,
            ("trackIds" Core..=) Core.<$> trackIds,
            ("tracks" Core..=) Core.<$> tracks
          ]
      )

-- | A set of products.
--
-- /See:/ 'newProductSet' smart constructor.
data ProductSet = ProductSet
  { -- | The list of product IDs making up the set of products.
    productId :: (Core.Maybe [Core.Text]),
    -- | The interpretation of this product set. \"unknown\" should never be sent and is ignored if received. \"whitelist\" means that the user is entitled to access the product set. \"includeAll\" means that all products are accessible, including products that are approved, products with revoked approval, and products that have never been approved. \"allApproved\" means that the user is entitled to access all products that are approved for the enterprise. If the value is \"allApproved\" or \"includeAll\", the productId field is ignored. If no value is provided, it is interpreted as \"whitelist\" for backwards compatibility. Further \"allApproved\" or \"includeAll\" does not enable automatic visibility of \"alpha\" or \"beta\" tracks for Android app. Use ProductVisibility to enable \"alpha\" or \"beta\" tracks per user.
    productSetBehavior :: (Core.Maybe ProductSet_ProductSetBehavior),
    -- | Additional list of product IDs making up the product set. Unlike the productID array, in this list It\'s possible to specify which tracks (alpha, beta, production) of a product are visible to the user. See ProductVisibility and its fields for more information. Specifying the same product ID both here and in the productId array is not allowed and it will result in an error.
    productVisibility :: (Core.Maybe [ProductVisibility])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductSet' with the minimum fields required to make a request.
newProductSet ::
  ProductSet
newProductSet =
  ProductSet
    { productId = Core.Nothing,
      productSetBehavior = Core.Nothing,
      productVisibility = Core.Nothing
    }

instance Core.FromJSON ProductSet where
  parseJSON =
    Core.withObject
      "ProductSet"
      ( \o ->
          ProductSet
            Core.<$> (o Core..:? "productId" Core..!= Core.mempty)
            Core.<*> (o Core..:? "productSetBehavior")
            Core.<*> ( o Core..:? "productVisibility"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON ProductSet where
  toJSON ProductSet {..} =
    Core.object
      ( Core.catMaybes
          [ ("productId" Core..=) Core.<$> productId,
            ("productSetBehavior" Core..=)
              Core.<$> productSetBehavior,
            ("productVisibility" Core..=)
              Core.<$> productVisibility
          ]
      )

--
-- /See:/ 'newProductSigningCertificate' smart constructor.
data ProductSigningCertificate = ProductSigningCertificate
  { -- | The base64 urlsafe encoded SHA1 hash of the certificate. (This field is deprecated in favor of SHA2-256. It should not be used and may be removed at any time.)
    certificateHashSha1 :: (Core.Maybe Core.Text),
    -- | The base64 urlsafe encoded SHA2-256 hash of the certificate.
    certificateHashSha256 :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductSigningCertificate' with the minimum fields required to make a request.
newProductSigningCertificate ::
  ProductSigningCertificate
newProductSigningCertificate =
  ProductSigningCertificate
    { certificateHashSha1 = Core.Nothing,
      certificateHashSha256 = Core.Nothing
    }

instance Core.FromJSON ProductSigningCertificate where
  parseJSON =
    Core.withObject
      "ProductSigningCertificate"
      ( \o ->
          ProductSigningCertificate
            Core.<$> (o Core..:? "certificateHashSha1")
            Core.<*> (o Core..:? "certificateHashSha256")
      )

instance Core.ToJSON ProductSigningCertificate where
  toJSON ProductSigningCertificate {..} =
    Core.object
      ( Core.catMaybes
          [ ("certificateHashSha1" Core..=)
              Core.<$> certificateHashSha1,
            ("certificateHashSha256" Core..=)
              Core.<$> certificateHashSha256
          ]
      )

-- | A product to be made visible to a user.
--
-- /See:/ 'newProductVisibility' smart constructor.
data ProductVisibility = ProductVisibility
  { -- | The product ID to make visible to the user. Required for each item in the productVisibility list.
    productId :: (Core.Maybe Core.Text),
    -- | Grants the user visibility to the specified product track(s), identified by trackIds.
    trackIds :: (Core.Maybe [Core.Text]),
    -- | Deprecated. Use trackIds instead.
    tracks :: (Core.Maybe [ProductVisibility_TracksItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductVisibility' with the minimum fields required to make a request.
newProductVisibility ::
  ProductVisibility
newProductVisibility =
  ProductVisibility
    { productId = Core.Nothing,
      trackIds = Core.Nothing,
      tracks = Core.Nothing
    }

instance Core.FromJSON ProductVisibility where
  parseJSON =
    Core.withObject
      "ProductVisibility"
      ( \o ->
          ProductVisibility
            Core.<$> (o Core..:? "productId")
            Core.<*> (o Core..:? "trackIds" Core..!= Core.mempty)
            Core.<*> (o Core..:? "tracks" Core..!= Core.mempty)
      )

instance Core.ToJSON ProductVisibility where
  toJSON ProductVisibility {..} =
    Core.object
      ( Core.catMaybes
          [ ("productId" Core..=) Core.<$> productId,
            ("trackIds" Core..=) Core.<$> trackIds,
            ("tracks" Core..=) Core.<$> tracks
          ]
      )

--
-- /See:/ 'newProductsApproveRequest' smart constructor.
data ProductsApproveRequest = ProductsApproveRequest
  { -- | The approval URL that was shown to the user. Only the permissions shown to the user with that URL will be accepted, which may not be the product\'s entire set of permissions. For example, the URL may only display new permissions from an update after the product was approved, or not include new permissions if the product was updated since the URL was generated.
    approvalUrlInfo :: (Core.Maybe ApprovalUrlInfo),
    -- | Sets how new permission requests for the product are handled. \"allPermissions\" automatically approves all current and future permissions for the product. \"currentPermissionsOnly\" approves the current set of permissions for the product, but any future permissions added through updates will require manual reapproval. If not specified, only the current set of permissions will be approved.
    approvedPermissions :: (Core.Maybe ProductsApproveRequest_ApprovedPermissions)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductsApproveRequest' with the minimum fields required to make a request.
newProductsApproveRequest ::
  ProductsApproveRequest
newProductsApproveRequest =
  ProductsApproveRequest
    { approvalUrlInfo = Core.Nothing,
      approvedPermissions = Core.Nothing
    }

instance Core.FromJSON ProductsApproveRequest where
  parseJSON =
    Core.withObject
      "ProductsApproveRequest"
      ( \o ->
          ProductsApproveRequest
            Core.<$> (o Core..:? "approvalUrlInfo")
            Core.<*> (o Core..:? "approvedPermissions")
      )

instance Core.ToJSON ProductsApproveRequest where
  toJSON ProductsApproveRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("approvalUrlInfo" Core..=)
              Core.<$> approvalUrlInfo,
            ("approvedPermissions" Core..=)
              Core.<$> approvedPermissions
          ]
      )

--
-- /See:/ 'newProductsGenerateApprovalUrlResponse' smart constructor.
newtype ProductsGenerateApprovalUrlResponse = ProductsGenerateApprovalUrlResponse
  { -- | A URL that can be rendered in an iframe to display the permissions (if any) of a product. This URL can be used to approve the product only once and only within 24 hours of being generated, using the Products.approve call. If the product is currently unapproved and has no permissions, this URL will point to an empty page. If the product is currently approved, a URL will only be generated if that product has added permissions since it was last approved, and the URL will only display those new permissions that have not yet been accepted.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductsGenerateApprovalUrlResponse' with the minimum fields required to make a request.
newProductsGenerateApprovalUrlResponse ::
  ProductsGenerateApprovalUrlResponse
newProductsGenerateApprovalUrlResponse =
  ProductsGenerateApprovalUrlResponse {url = Core.Nothing}

instance
  Core.FromJSON
    ProductsGenerateApprovalUrlResponse
  where
  parseJSON =
    Core.withObject
      "ProductsGenerateApprovalUrlResponse"
      ( \o ->
          ProductsGenerateApprovalUrlResponse
            Core.<$> (o Core..:? "url")
      )

instance
  Core.ToJSON
    ProductsGenerateApprovalUrlResponse
  where
  toJSON ProductsGenerateApprovalUrlResponse {..} =
    Core.object
      (Core.catMaybes [("url" Core..=) Core.<$> url])

--
-- /See:/ 'newProductsListResponse' smart constructor.
data ProductsListResponse = ProductsListResponse
  { -- | General pagination information.
    pageInfo :: (Core.Maybe PageInfo),
    -- | Information about a product (e.g. an app) in the Google Play store, for display to an enterprise admin.
    product :: (Core.Maybe [Product]),
    -- | Pagination information for token pagination.
    tokenPagination :: (Core.Maybe TokenPagination)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductsListResponse' with the minimum fields required to make a request.
newProductsListResponse ::
  ProductsListResponse
newProductsListResponse =
  ProductsListResponse
    { pageInfo = Core.Nothing,
      product = Core.Nothing,
      tokenPagination = Core.Nothing
    }

instance Core.FromJSON ProductsListResponse where
  parseJSON =
    Core.withObject
      "ProductsListResponse"
      ( \o ->
          ProductsListResponse
            Core.<$> (o Core..:? "pageInfo")
            Core.<*> (o Core..:? "product" Core..!= Core.mempty)
            Core.<*> (o Core..:? "tokenPagination")
      )

instance Core.ToJSON ProductsListResponse where
  toJSON ProductsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("pageInfo" Core..=) Core.<$> pageInfo,
            ("product" Core..=) Core.<$> product,
            ("tokenPagination" Core..=)
              Core.<$> tokenPagination
          ]
      )

-- | A service account identity, including the name and credentials that can be used to authenticate as the service account.
--
-- /See:/ 'newServiceAccount' smart constructor.
data ServiceAccount = ServiceAccount
  { -- | Credentials that can be used to authenticate as this ServiceAccount.
    key :: (Core.Maybe ServiceAccountKey),
    -- | The account name of the service account, in the form of an email address. Assigned by the server.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceAccount' with the minimum fields required to make a request.
newServiceAccount ::
  ServiceAccount
newServiceAccount = ServiceAccount {key = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON ServiceAccount where
  parseJSON =
    Core.withObject
      "ServiceAccount"
      ( \o ->
          ServiceAccount
            Core.<$> (o Core..:? "key") Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON ServiceAccount where
  toJSON ServiceAccount {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Credentials that can be used to authenticate as a service account.
--
-- /See:/ 'newServiceAccountKey' smart constructor.
data ServiceAccountKey = ServiceAccountKey
  { -- | The body of the private key credentials file, in string format. This is only populated when the ServiceAccountKey is created, and is not stored by Google.
    data' :: (Core.Maybe Core.Text),
    -- | An opaque, unique identifier for this ServiceAccountKey. Assigned by the server.
    id :: (Core.Maybe Core.Text),
    -- | Public key data for the credentials file. This is an X.509 cert. If you are using the googleCredentials key type, this is identical to the cert that can be retrieved by using the X.509 cert url inside of the credentials file.
    publicData :: (Core.Maybe Core.Text),
    -- | The file format of the generated key data.
    type' :: (Core.Maybe ServiceAccountKey_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceAccountKey' with the minimum fields required to make a request.
newServiceAccountKey ::
  ServiceAccountKey
newServiceAccountKey =
  ServiceAccountKey
    { data' = Core.Nothing,
      id = Core.Nothing,
      publicData = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON ServiceAccountKey where
  parseJSON =
    Core.withObject
      "ServiceAccountKey"
      ( \o ->
          ServiceAccountKey
            Core.<$> (o Core..:? "data")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "publicData")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ServiceAccountKey where
  toJSON ServiceAccountKey {..} =
    Core.object
      ( Core.catMaybes
          [ ("data" Core..=) Core.<$> data',
            ("id" Core..=) Core.<$> id,
            ("publicData" Core..=) Core.<$> publicData,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newServiceAccountKeysListResponse' smart constructor.
newtype ServiceAccountKeysListResponse = ServiceAccountKeysListResponse
  { -- | The service account credentials.
    serviceAccountKey :: (Core.Maybe [ServiceAccountKey])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceAccountKeysListResponse' with the minimum fields required to make a request.
newServiceAccountKeysListResponse ::
  ServiceAccountKeysListResponse
newServiceAccountKeysListResponse =
  ServiceAccountKeysListResponse {serviceAccountKey = Core.Nothing}

instance Core.FromJSON ServiceAccountKeysListResponse where
  parseJSON =
    Core.withObject
      "ServiceAccountKeysListResponse"
      ( \o ->
          ServiceAccountKeysListResponse
            Core.<$> ( o Core..:? "serviceAccountKey"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON ServiceAccountKeysListResponse where
  toJSON ServiceAccountKeysListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("serviceAccountKey" Core..=)
              Core.<$> serviceAccountKey
          ]
      )

-- | A resource returned by the GenerateSignupUrl API, which contains the Signup URL and Completion Token.
--
-- /See:/ 'newSignupInfo' smart constructor.
data SignupInfo = SignupInfo
  { -- | An opaque token that will be required, along with the Enterprise Token, for obtaining the enterprise resource from CompleteSignup.
    completionToken :: (Core.Maybe Core.Text),
    -- | Deprecated.
    kind :: (Core.Maybe Core.Text),
    -- | A URL under which the Admin can sign up for an enterprise. The page pointed to cannot be rendered in an iframe.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SignupInfo' with the minimum fields required to make a request.
newSignupInfo ::
  SignupInfo
newSignupInfo =
  SignupInfo
    { completionToken = Core.Nothing,
      kind = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON SignupInfo where
  parseJSON =
    Core.withObject
      "SignupInfo"
      ( \o ->
          SignupInfo
            Core.<$> (o Core..:? "completionToken")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON SignupInfo where
  toJSON SignupInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("completionToken" Core..=)
              Core.<$> completionToken,
            ("kind" Core..=) Core.<$> kind,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | Definition of a managed Google Play store cluster, a list of products displayed as part of a store page.
--
-- /See:/ 'newStoreCluster' smart constructor.
data StoreCluster = StoreCluster
  { -- | Unique ID of this cluster. Assigned by the server. Immutable once assigned.
    id :: (Core.Maybe Core.Text),
    -- | Ordered list of localized strings giving the name of this page. The text displayed is the one that best matches the user locale, or the first entry if there is no good match. There needs to be at least one entry.
    name :: (Core.Maybe [LocalizedText]),
    -- | String (US-ASCII only) used to determine order of this cluster within the parent page\'s elements. Page elements are sorted in lexicographic order of this field. Duplicated values are allowed, but ordering between elements with duplicate order is undefined. The value of this field is never visible to a user, it is used solely for the purpose of defining an ordering. Maximum length is 256 characters.
    orderInPage :: (Core.Maybe Core.Text),
    -- | List of products in the order they are displayed in the cluster. There should not be duplicates within a cluster.
    productId :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StoreCluster' with the minimum fields required to make a request.
newStoreCluster ::
  StoreCluster
newStoreCluster =
  StoreCluster
    { id = Core.Nothing,
      name = Core.Nothing,
      orderInPage = Core.Nothing,
      productId = Core.Nothing
    }

instance Core.FromJSON StoreCluster where
  parseJSON =
    Core.withObject
      "StoreCluster"
      ( \o ->
          StoreCluster
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "name" Core..!= Core.mempty)
            Core.<*> (o Core..:? "orderInPage")
            Core.<*> (o Core..:? "productId" Core..!= Core.mempty)
      )

instance Core.ToJSON StoreCluster where
  toJSON StoreCluster {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("name" Core..=) Core.<$> name,
            ("orderInPage" Core..=) Core.<$> orderInPage,
            ("productId" Core..=) Core.<$> productId
          ]
      )

-- | General setting for the managed Google Play store layout, currently only specifying the page to display the first time the store is opened.
--
-- /See:/ 'newStoreLayout' smart constructor.
data StoreLayout = StoreLayout
  { -- | The ID of the store page to be used as the homepage. The homepage is the first page shown in the managed Google Play Store. Not specifying a homepage is equivalent to setting the store layout type to \"basic\".
    homepageId :: (Core.Maybe Core.Text),
    -- | The store layout type. By default, this value is set to \"basic\" if the homepageId field is not set, and to \"custom\" otherwise. If set to \"basic\", the layout will consist of all approved apps that have been whitelisted for the user.
    storeLayoutType :: (Core.Maybe StoreLayout_StoreLayoutType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StoreLayout' with the minimum fields required to make a request.
newStoreLayout ::
  StoreLayout
newStoreLayout =
  StoreLayout {homepageId = Core.Nothing, storeLayoutType = Core.Nothing}

instance Core.FromJSON StoreLayout where
  parseJSON =
    Core.withObject
      "StoreLayout"
      ( \o ->
          StoreLayout
            Core.<$> (o Core..:? "homepageId")
            Core.<*> (o Core..:? "storeLayoutType")
      )

instance Core.ToJSON StoreLayout where
  toJSON StoreLayout {..} =
    Core.object
      ( Core.catMaybes
          [ ("homepageId" Core..=) Core.<$> homepageId,
            ("storeLayoutType" Core..=)
              Core.<$> storeLayoutType
          ]
      )

--
-- /See:/ 'newStoreLayoutClustersListResponse' smart constructor.
newtype StoreLayoutClustersListResponse = StoreLayoutClustersListResponse
  { -- | A store cluster of an enterprise.
    cluster :: (Core.Maybe [StoreCluster])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StoreLayoutClustersListResponse' with the minimum fields required to make a request.
newStoreLayoutClustersListResponse ::
  StoreLayoutClustersListResponse
newStoreLayoutClustersListResponse =
  StoreLayoutClustersListResponse {cluster = Core.Nothing}

instance
  Core.FromJSON
    StoreLayoutClustersListResponse
  where
  parseJSON =
    Core.withObject
      "StoreLayoutClustersListResponse"
      ( \o ->
          StoreLayoutClustersListResponse
            Core.<$> (o Core..:? "cluster" Core..!= Core.mempty)
      )

instance Core.ToJSON StoreLayoutClustersListResponse where
  toJSON StoreLayoutClustersListResponse {..} =
    Core.object
      ( Core.catMaybes
          [("cluster" Core..=) Core.<$> cluster]
      )

--
-- /See:/ 'newStoreLayoutPagesListResponse' smart constructor.
newtype StoreLayoutPagesListResponse = StoreLayoutPagesListResponse
  { -- | A store page of an enterprise.
    page :: (Core.Maybe [StorePage])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StoreLayoutPagesListResponse' with the minimum fields required to make a request.
newStoreLayoutPagesListResponse ::
  StoreLayoutPagesListResponse
newStoreLayoutPagesListResponse =
  StoreLayoutPagesListResponse {page = Core.Nothing}

instance Core.FromJSON StoreLayoutPagesListResponse where
  parseJSON =
    Core.withObject
      "StoreLayoutPagesListResponse"
      ( \o ->
          StoreLayoutPagesListResponse
            Core.<$> (o Core..:? "page" Core..!= Core.mempty)
      )

instance Core.ToJSON StoreLayoutPagesListResponse where
  toJSON StoreLayoutPagesListResponse {..} =
    Core.object
      (Core.catMaybes [("page" Core..=) Core.<$> page])

-- | Definition of a managed Google Play store page, made of a localized name and links to other pages. A page also contains clusters defined as a subcollection.
--
-- /See:/ 'newStorePage' smart constructor.
data StorePage = StorePage
  { -- | Unique ID of this page. Assigned by the server. Immutable once assigned.
    id :: (Core.Maybe Core.Text),
    -- | Ordered list of pages a user should be able to reach from this page. The list can\'t include this page. It is recommended that the basic pages are created first, before adding the links between pages. The API doesn\'t verify that the pages exist or the pages are reachable.
    link :: (Core.Maybe [Core.Text]),
    -- | Ordered list of localized strings giving the name of this page. The text displayed is the one that best matches the user locale, or the first entry if there is no good match. There needs to be at least one entry.
    name :: (Core.Maybe [LocalizedText])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorePage' with the minimum fields required to make a request.
newStorePage ::
  StorePage
newStorePage =
  StorePage {id = Core.Nothing, link = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON StorePage where
  parseJSON =
    Core.withObject
      "StorePage"
      ( \o ->
          StorePage
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "link" Core..!= Core.mempty)
            Core.<*> (o Core..:? "name" Core..!= Core.mempty)
      )

instance Core.ToJSON StorePage where
  toJSON StorePage {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("link" Core..=) Core.<$> link,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Pagination information returned by a List operation when token pagination is enabled. List operations that supports paging return only one \"page\" of results. This protocol buffer message describes the page that has been returned. When using token pagination, clients should use the next\/previous token to get another page of the result. The presence or absence of next\/previous token indicates whether a next\/previous page is available and provides a mean of accessing this page. ListRequest.page/token should be set to either next/page/token or previous/page_token to access another page.
--
-- /See:/ 'newTokenPagination' smart constructor.
data TokenPagination = TokenPagination
  { -- | Tokens to pass to the standard list field \'page/token\'. Whenever available, tokens are preferred over manipulating start/index.
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    previousPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TokenPagination' with the minimum fields required to make a request.
newTokenPagination ::
  TokenPagination
newTokenPagination =
  TokenPagination
    { nextPageToken = Core.Nothing,
      previousPageToken = Core.Nothing
    }

instance Core.FromJSON TokenPagination where
  parseJSON =
    Core.withObject
      "TokenPagination"
      ( \o ->
          TokenPagination
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "previousPageToken")
      )

instance Core.ToJSON TokenPagination where
  toJSON TokenPagination {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("previousPageToken" Core..=)
              Core.<$> previousPageToken
          ]
      )

-- | Id to name association of a track.
--
-- /See:/ 'newTrackInfo' smart constructor.
data TrackInfo = TrackInfo
  { -- | A modifiable name for a track. This is the visible name in the play developer console.
    trackAlias :: (Core.Maybe Core.Text),
    -- | Unmodifiable, unique track identifier. This identifier is the releaseTrackId in the url of the play developer console page that displays the track information.
    trackId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TrackInfo' with the minimum fields required to make a request.
newTrackInfo ::
  TrackInfo
newTrackInfo = TrackInfo {trackAlias = Core.Nothing, trackId = Core.Nothing}

instance Core.FromJSON TrackInfo where
  parseJSON =
    Core.withObject
      "TrackInfo"
      ( \o ->
          TrackInfo
            Core.<$> (o Core..:? "trackAlias")
            Core.<*> (o Core..:? "trackId")
      )

instance Core.ToJSON TrackInfo where
  toJSON TrackInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("trackAlias" Core..=) Core.<$> trackAlias,
            ("trackId" Core..=) Core.<$> trackId
          ]
      )

-- | A Users resource represents an account associated with an enterprise. The account may be specific to a device or to an individual user (who can then use the account across multiple devices). The account may provide access to managed Google Play only, or to other Google services, depending on the identity model: - The Google managed domain identity model requires synchronization to Google account sources (via primaryEmail). - The managed Google Play Accounts identity model provides a dynamic means for enterprises to create user or device accounts as needed. These accounts provide access to managed Google Play.
--
-- /See:/ 'newUser' smart constructor.
data User = User
  { -- | A unique identifier you create for this user, such as \"user342\" or \"asset#44418\". Do not use personally identifiable information (PII) for this property. Must always be set for EMM-managed users. Not set for Google-managed users.
    accountIdentifier :: (Core.Maybe Core.Text),
    -- | The type of account that this user represents. A userAccount can be installed on multiple devices, but a deviceAccount is specific to a single device. An EMM-managed user (emmManaged) can be either type (userAccount, deviceAccount), but a Google-managed user (googleManaged) is always a userAccount.
    accountType :: (Core.Maybe User_AccountType),
    -- | The name that will appear in user interfaces. Setting this property is optional when creating EMM-managed users. If you do set this property, use something generic about the organization (such as \"Example, Inc.\") or your name (as EMM). Not used for Google-managed user accounts. \@mutable androidenterprise.users.update
    displayName :: (Core.Maybe Core.Text),
    -- | The unique ID for the user.
    id :: (Core.Maybe Core.Text),
    -- | The entity that manages the user. With googleManaged users, the source of truth is Google so EMMs have to make sure a Google Account exists for the user. With emmManaged users, the EMM is in charge.
    managementType :: (Core.Maybe User_ManagementType),
    -- | The user\'s primary email address, for example, \"jsmith\@example.com\". Will always be set for Google managed users and not set for EMM managed users.
    primaryEmail :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
newUser ::
  User
newUser =
  User
    { accountIdentifier = Core.Nothing,
      accountType = Core.Nothing,
      displayName = Core.Nothing,
      id = Core.Nothing,
      managementType = Core.Nothing,
      primaryEmail = Core.Nothing
    }

instance Core.FromJSON User where
  parseJSON =
    Core.withObject
      "User"
      ( \o ->
          User
            Core.<$> (o Core..:? "accountIdentifier")
            Core.<*> (o Core..:? "accountType")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "managementType")
            Core.<*> (o Core..:? "primaryEmail")
      )

instance Core.ToJSON User where
  toJSON User {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountIdentifier" Core..=)
              Core.<$> accountIdentifier,
            ("accountType" Core..=) Core.<$> accountType,
            ("displayName" Core..=) Core.<$> displayName,
            ("id" Core..=) Core.<$> id,
            ("managementType" Core..=) Core.<$> managementType,
            ("primaryEmail" Core..=) Core.<$> primaryEmail
          ]
      )

--
-- /See:/ 'newUsersListResponse' smart constructor.
newtype UsersListResponse = UsersListResponse
  { -- | A user of an enterprise.
    user :: (Core.Maybe [User])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UsersListResponse' with the minimum fields required to make a request.
newUsersListResponse ::
  UsersListResponse
newUsersListResponse = UsersListResponse {user = Core.Nothing}

instance Core.FromJSON UsersListResponse where
  parseJSON =
    Core.withObject
      "UsersListResponse"
      ( \o ->
          UsersListResponse
            Core.<$> (o Core..:? "user" Core..!= Core.mempty)
      )

instance Core.ToJSON UsersListResponse where
  toJSON UsersListResponse {..} =
    Core.object
      (Core.catMaybes [("user" Core..=) Core.<$> user])

-- | A variable set is a key-value pair of EMM-provided placeholders and its corresponding value, which is attributed to a user. For example, $FIRSTNAME could be a placeholder, and its value could be Alice. Placeholders should start with a \'$\' sign and should be alphanumeric only.
--
-- /See:/ 'newVariableSet' smart constructor.
data VariableSet = VariableSet
  { -- | The placeholder string; defined by EMM.
    placeholder :: (Core.Maybe Core.Text),
    -- | The value of the placeholder, specific to the user.
    userValue :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VariableSet' with the minimum fields required to make a request.
newVariableSet ::
  VariableSet
newVariableSet =
  VariableSet {placeholder = Core.Nothing, userValue = Core.Nothing}

instance Core.FromJSON VariableSet where
  parseJSON =
    Core.withObject
      "VariableSet"
      ( \o ->
          VariableSet
            Core.<$> (o Core..:? "placeholder")
            Core.<*> (o Core..:? "userValue")
      )

instance Core.ToJSON VariableSet where
  toJSON VariableSet {..} =
    Core.object
      ( Core.catMaybes
          [ ("placeholder" Core..=) Core.<$> placeholder,
            ("userValue" Core..=) Core.<$> userValue
          ]
      )

-- | A WebApps resource represents a web app created for an enterprise. Web apps are published to managed Google Play and can be distributed like other Android apps. On a user\'s device, a web app opens its specified URL.
--
-- /See:/ 'newWebApp' smart constructor.
data WebApp = WebApp
  { -- | The display mode of the web app. Possible values include: - \"minimalUi\", the device\'s status bar, navigation bar, the app\'s URL, and a refresh button are visible when the app is open. For HTTP URLs, you can only select this option. - \"standalone\", the device\'s status bar and navigation bar are visible when the app is open. - \"fullScreen\", the app opens in full screen mode, hiding the device\'s status and navigation bars. All browser UI elements, page URL, system status bar and back button are not visible, and the web app takes up the entirety of the available display area.
    displayMode :: (Core.Maybe WebApp_DisplayMode),
    -- | A list of icons representing this website. If absent, a default icon (for create) or the current icon (for update) will be used.
    icons :: (Core.Maybe [WebAppIcon]),
    -- | A flag whether the app has been published to the Play store yet.
    isPublished :: (Core.Maybe Core.Bool),
    -- | The start URL, i.e. the URL that should load when the user opens the application.
    startUrl :: (Core.Maybe Core.Text),
    -- | The title of the web app as displayed to the user (e.g., amongst a list of other applications, or as a label for an icon).
    title :: (Core.Maybe Core.Text),
    -- | The current version of the app. Note that the version can automatically increase during the lifetime of the web app, while Google does internal housekeeping to keep the web app up-to-date.
    versionCode :: (Core.Maybe Core.Int64),
    -- | The ID of the application. A string of the form \"app:\<package name>\" where the package name always starts with the prefix \"com.google.enterprise.webapp.\" followed by a random id.
    webAppId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebApp' with the minimum fields required to make a request.
newWebApp ::
  WebApp
newWebApp =
  WebApp
    { displayMode = Core.Nothing,
      icons = Core.Nothing,
      isPublished = Core.Nothing,
      startUrl = Core.Nothing,
      title = Core.Nothing,
      versionCode = Core.Nothing,
      webAppId = Core.Nothing
    }

instance Core.FromJSON WebApp where
  parseJSON =
    Core.withObject
      "WebApp"
      ( \o ->
          WebApp
            Core.<$> (o Core..:? "displayMode")
            Core.<*> (o Core..:? "icons" Core..!= Core.mempty)
            Core.<*> (o Core..:? "isPublished")
            Core.<*> (o Core..:? "startUrl")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "versionCode")
            Core.<*> (o Core..:? "webAppId")
      )

instance Core.ToJSON WebApp where
  toJSON WebApp {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayMode" Core..=) Core.<$> displayMode,
            ("icons" Core..=) Core.<$> icons,
            ("isPublished" Core..=) Core.<$> isPublished,
            ("startUrl" Core..=) Core.<$> startUrl,
            ("title" Core..=) Core.<$> title,
            ("versionCode" Core..=) Core.. Core.AsText
              Core.<$> versionCode,
            ("webAppId" Core..=) Core.<$> webAppId
          ]
      )

-- | Icon for a web app.
--
-- /See:/ 'newWebAppIcon' smart constructor.
newtype WebAppIcon = WebAppIcon
  { -- | The actual bytes of the image in a base64url encoded string (c.f. RFC4648, section 5 \"Base 64 Encoding with URL and Filename Safe Alphabet\"). - The image type can be png or jpg. - The image should ideally be square. - The image should ideally have a size of 512x512.
    imageData :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebAppIcon' with the minimum fields required to make a request.
newWebAppIcon ::
  WebAppIcon
newWebAppIcon = WebAppIcon {imageData = Core.Nothing}

instance Core.FromJSON WebAppIcon where
  parseJSON =
    Core.withObject
      "WebAppIcon"
      (\o -> WebAppIcon Core.<$> (o Core..:? "imageData"))

instance Core.ToJSON WebAppIcon where
  toJSON WebAppIcon {..} =
    Core.object
      ( Core.catMaybes
          [("imageData" Core..=) Core.<$> imageData]
      )

--
-- /See:/ 'newWebAppsListResponse' smart constructor.
newtype WebAppsListResponse = WebAppsListResponse
  { -- | The manifest describing a web app.
    webApp :: (Core.Maybe [WebApp])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebAppsListResponse' with the minimum fields required to make a request.
newWebAppsListResponse ::
  WebAppsListResponse
newWebAppsListResponse = WebAppsListResponse {webApp = Core.Nothing}

instance Core.FromJSON WebAppsListResponse where
  parseJSON =
    Core.withObject
      "WebAppsListResponse"
      ( \o ->
          WebAppsListResponse
            Core.<$> (o Core..:? "webApp" Core..!= Core.mempty)
      )

instance Core.ToJSON WebAppsListResponse where
  toJSON WebAppsListResponse {..} =
    Core.object
      (Core.catMaybes [("webApp" Core..=) Core.<$> webApp])
