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
-- Module      : Network.Google.AdSenseHost.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.AdSenseHost.Internal.Product
  ( -- * Account
    Account (..),
    newAccount,

    -- * Accounts
    Accounts (..),
    newAccounts,

    -- * AdClient
    AdClient (..),
    newAdClient,

    -- * AdClients
    AdClients (..),
    newAdClients,

    -- * AdCode
    AdCode (..),
    newAdCode,

    -- * AdStyle
    AdStyle (..),
    newAdStyle,

    -- * AdStyle_Colors
    AdStyle_Colors (..),
    newAdStyle_Colors,

    -- * AdStyle_Font
    AdStyle_Font (..),
    newAdStyle_Font,

    -- * AdUnit
    AdUnit (..),
    newAdUnit,

    -- * AdUnit_ContentAdsSettings
    AdUnit_ContentAdsSettings (..),
    newAdUnit_ContentAdsSettings,

    -- * AdUnit_ContentAdsSettings_BackupOption
    AdUnit_ContentAdsSettings_BackupOption (..),
    newAdUnit_ContentAdsSettings_BackupOption,

    -- * AdUnit_MobileContentAdsSettings
    AdUnit_MobileContentAdsSettings (..),
    newAdUnit_MobileContentAdsSettings,

    -- * AdUnits
    AdUnits (..),
    newAdUnits,

    -- * AssociationSession
    AssociationSession (..),
    newAssociationSession,

    -- * CustomChannel
    CustomChannel (..),
    newCustomChannel,

    -- * CustomChannels
    CustomChannels (..),
    newCustomChannels,

    -- * Report
    Report (..),
    newReport,

    -- * Report_HeadersItem
    Report_HeadersItem (..),
    newReport_HeadersItem,

    -- * UrlChannel
    UrlChannel (..),
    newUrlChannel,

    -- * UrlChannels
    UrlChannels (..),
    newUrlChannels,
  )
where

import Network.Google.AdSenseHost.Internal.Sum
import qualified Network.Google.Prelude as Core

--
-- /See:/ 'newAccount' smart constructor.
data Account = Account
  { -- | Unique identifier of this account.
    id :: (Core.Maybe Core.Text),
    -- | Kind of resource this is, in this case adsensehost#account.
    kind :: Core.Text,
    -- | Name of this account.
    name :: (Core.Maybe Core.Text),
    -- | Approval status of this account. One of: PENDING, APPROVED, DISABLED.
    status :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
newAccount ::
  Account
newAccount =
  Account
    { id = Core.Nothing,
      kind = "adsensehost#account",
      name = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON Account where
  parseJSON =
    Core.withObject
      "Account"
      ( \o ->
          Account
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "adsensehost#account")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON Account where
  toJSON Account {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name,
            ("status" Core..=) Core.<$> status
          ]
      )

--
-- /See:/ 'newAccounts' smart constructor.
data Accounts = Accounts
  { -- | ETag of this response for caching purposes.
    etag :: (Core.Maybe Core.Text),
    -- | The accounts returned in this list response.
    items :: (Core.Maybe [Account]),
    -- | Kind of list this is, in this case adsensehost#accounts.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Accounts' with the minimum fields required to make a request.
newAccounts ::
  Accounts
newAccounts =
  Accounts
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = "adsensehost#accounts"
    }

instance Core.FromJSON Accounts where
  parseJSON =
    Core.withObject
      "Accounts"
      ( \o ->
          Accounts
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind" Core..!= "adsensehost#accounts")
      )

instance Core.ToJSON Accounts where
  toJSON Accounts {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind)
          ]
      )

--
-- /See:/ 'newAdClient' smart constructor.
data AdClient = AdClient
  { -- | Whether this ad client is opted in to ARC.
    arcOptIn :: (Core.Maybe Core.Bool),
    -- | Unique identifier of this ad client.
    id :: (Core.Maybe Core.Text),
    -- | Kind of resource this is, in this case adsensehost#adClient.
    kind :: Core.Text,
    -- | This ad client\'s product code, which corresponds to the PRODUCT_CODE report dimension.
    productCode :: (Core.Maybe Core.Text),
    -- | Whether this ad client supports being reported on.
    supportsReporting :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdClient' with the minimum fields required to make a request.
newAdClient ::
  AdClient
newAdClient =
  AdClient
    { arcOptIn = Core.Nothing,
      id = Core.Nothing,
      kind = "adsensehost#adClient",
      productCode = Core.Nothing,
      supportsReporting = Core.Nothing
    }

instance Core.FromJSON AdClient where
  parseJSON =
    Core.withObject
      "AdClient"
      ( \o ->
          AdClient
            Core.<$> (o Core..:? "arcOptIn")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "adsensehost#adClient")
            Core.<*> (o Core..:? "productCode")
            Core.<*> (o Core..:? "supportsReporting")
      )

instance Core.ToJSON AdClient where
  toJSON AdClient {..} =
    Core.object
      ( Core.catMaybes
          [ ("arcOptIn" Core..=) Core.<$> arcOptIn,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("productCode" Core..=) Core.<$> productCode,
            ("supportsReporting" Core..=)
              Core.<$> supportsReporting
          ]
      )

--
-- /See:/ 'newAdClients' smart constructor.
data AdClients = AdClients
  { -- | ETag of this response for caching purposes.
    etag :: (Core.Maybe Core.Text),
    -- | The ad clients returned in this list response.
    items :: (Core.Maybe [AdClient]),
    -- | Kind of list this is, in this case adsensehost#adClients.
    kind :: Core.Text,
    -- | Continuation token used to page through ad clients. To retrieve the next page of results, set the next request\'s \"pageToken\" value to this.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdClients' with the minimum fields required to make a request.
newAdClients ::
  AdClients
newAdClients =
  AdClients
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = "adsensehost#adClients",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON AdClients where
  parseJSON =
    Core.withObject
      "AdClients"
      ( \o ->
          AdClients
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind" Core..!= "adsensehost#adClients")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON AdClients where
  toJSON AdClients {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newAdCode' smart constructor.
data AdCode = AdCode
  { -- | The ad code snippet.
    adCode :: (Core.Maybe Core.Text),
    -- | Kind this is, in this case adsensehost#adCode.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdCode' with the minimum fields required to make a request.
newAdCode ::
  AdCode
newAdCode = AdCode {adCode = Core.Nothing, kind = "adsensehost#adCode"}

instance Core.FromJSON AdCode where
  parseJSON =
    Core.withObject
      "AdCode"
      ( \o ->
          AdCode
            Core.<$> (o Core..:? "adCode")
            Core.<*> (o Core..:? "kind" Core..!= "adsensehost#adCode")
      )

instance Core.ToJSON AdCode where
  toJSON AdCode {..} =
    Core.object
      ( Core.catMaybes
          [ ("adCode" Core..=) Core.<$> adCode,
            Core.Just ("kind" Core..= kind)
          ]
      )

--
-- /See:/ 'newAdStyle' smart constructor.
data AdStyle = AdStyle
  { -- | The colors included in the style. These are represented as six hexadecimal characters, similar to HTML color codes, but without the leading hash.
    colors :: (Core.Maybe AdStyle_Colors),
    -- | The style of the corners in the ad (deprecated: never populated, ignored).
    corners :: (Core.Maybe Core.Text),
    -- | The font which is included in the style.
    font :: (Core.Maybe AdStyle_Font),
    -- | Kind this is, in this case adsensehost#adStyle.
    kind :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdStyle' with the minimum fields required to make a request.
newAdStyle ::
  AdStyle
newAdStyle =
  AdStyle
    { colors = Core.Nothing,
      corners = Core.Nothing,
      font = Core.Nothing,
      kind = "adsensehost#adStyle"
    }

instance Core.FromJSON AdStyle where
  parseJSON =
    Core.withObject
      "AdStyle"
      ( \o ->
          AdStyle
            Core.<$> (o Core..:? "colors")
            Core.<*> (o Core..:? "corners")
            Core.<*> (o Core..:? "font")
            Core.<*> (o Core..:? "kind" Core..!= "adsensehost#adStyle")
      )

instance Core.ToJSON AdStyle where
  toJSON AdStyle {..} =
    Core.object
      ( Core.catMaybes
          [ ("colors" Core..=) Core.<$> colors,
            ("corners" Core..=) Core.<$> corners,
            ("font" Core..=) Core.<$> font,
            Core.Just ("kind" Core..= kind)
          ]
      )

-- | The colors included in the style. These are represented as six hexadecimal characters, similar to HTML color codes, but without the leading hash.
--
-- /See:/ 'newAdStyle_Colors' smart constructor.
data AdStyle_Colors = AdStyle_Colors
  { -- | The color of the ad background.
    background :: (Core.Maybe Core.Text),
    -- | The color of the ad border.
    border :: (Core.Maybe Core.Text),
    -- | The color of the ad text.
    text :: (Core.Maybe Core.Text),
    -- | The color of the ad title.
    title :: (Core.Maybe Core.Text),
    -- | The color of the ad url.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdStyle_Colors' with the minimum fields required to make a request.
newAdStyle_Colors ::
  AdStyle_Colors
newAdStyle_Colors =
  AdStyle_Colors
    { background = Core.Nothing,
      border = Core.Nothing,
      text = Core.Nothing,
      title = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON AdStyle_Colors where
  parseJSON =
    Core.withObject
      "AdStyle_Colors"
      ( \o ->
          AdStyle_Colors
            Core.<$> (o Core..:? "background")
            Core.<*> (o Core..:? "border")
            Core.<*> (o Core..:? "text")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON AdStyle_Colors where
  toJSON AdStyle_Colors {..} =
    Core.object
      ( Core.catMaybes
          [ ("background" Core..=) Core.<$> background,
            ("border" Core..=) Core.<$> border,
            ("text" Core..=) Core.<$> text,
            ("title" Core..=) Core.<$> title,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | The font which is included in the style.
--
-- /See:/ 'newAdStyle_Font' smart constructor.
data AdStyle_Font = AdStyle_Font
  { -- | The family of the font. Possible values are: ACCOUNT/DEFAULT/FAMILY, ADSENSE/DEFAULT/FAMILY, ARIAL, TIMES and VERDANA.
    family :: (Core.Maybe Core.Text),
    -- | The size of the font. Possible values are: ACCOUNT/DEFAULT/SIZE, ADSENSE/DEFAULT/SIZE, SMALL, MEDIUM and LARGE.
    size :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdStyle_Font' with the minimum fields required to make a request.
newAdStyle_Font ::
  AdStyle_Font
newAdStyle_Font = AdStyle_Font {family = Core.Nothing, size = Core.Nothing}

instance Core.FromJSON AdStyle_Font where
  parseJSON =
    Core.withObject
      "AdStyle_Font"
      ( \o ->
          AdStyle_Font
            Core.<$> (o Core..:? "family") Core.<*> (o Core..:? "size")
      )

instance Core.ToJSON AdStyle_Font where
  toJSON AdStyle_Font {..} =
    Core.object
      ( Core.catMaybes
          [ ("family" Core..=) Core.<$> family,
            ("size" Core..=) Core.<$> size
          ]
      )

--
-- /See:/ 'newAdUnit' smart constructor.
data AdUnit = AdUnit
  { -- | Identity code of this ad unit, not necessarily unique across ad clients.
    code :: (Core.Maybe Core.Text),
    -- | Settings specific to content ads (AFC) and highend mobile content ads (AFMC - deprecated).
    contentAdsSettings :: (Core.Maybe AdUnit_ContentAdsSettings),
    -- | Custom style information specific to this ad unit.
    customStyle :: (Core.Maybe AdStyle),
    -- | Unique identifier of this ad unit. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format.
    id :: (Core.Maybe Core.Text),
    -- | Kind of resource this is, in this case adsensehost#adUnit.
    kind :: Core.Text,
    -- | Settings specific to WAP mobile content ads (AFMC - deprecated).
    mobileContentAdsSettings :: (Core.Maybe AdUnit_MobileContentAdsSettings),
    -- | Name of this ad unit.
    name :: (Core.Maybe Core.Text),
    -- | Status of this ad unit. Possible values are: NEW: Indicates that the ad unit was created within the last seven days and does not yet have any activity associated with it.
    --
    -- ACTIVE: Indicates that there has been activity on this ad unit in the last seven days.
    --
    -- INACTIVE: Indicates that there has been no activity on this ad unit in the last seven days.
    status :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdUnit' with the minimum fields required to make a request.
newAdUnit ::
  AdUnit
newAdUnit =
  AdUnit
    { code = Core.Nothing,
      contentAdsSettings = Core.Nothing,
      customStyle = Core.Nothing,
      id = Core.Nothing,
      kind = "adsensehost#adUnit",
      mobileContentAdsSettings = Core.Nothing,
      name = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON AdUnit where
  parseJSON =
    Core.withObject
      "AdUnit"
      ( \o ->
          AdUnit
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "contentAdsSettings")
            Core.<*> (o Core..:? "customStyle")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "adsensehost#adUnit")
            Core.<*> (o Core..:? "mobileContentAdsSettings")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON AdUnit where
  toJSON AdUnit {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("contentAdsSettings" Core..=)
              Core.<$> contentAdsSettings,
            ("customStyle" Core..=) Core.<$> customStyle,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("mobileContentAdsSettings" Core..=)
              Core.<$> mobileContentAdsSettings,
            ("name" Core..=) Core.<$> name,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | Settings specific to content ads (AFC) and highend mobile content ads (AFMC - deprecated).
--
-- /See:/ 'newAdUnit_ContentAdsSettings' smart constructor.
data AdUnit_ContentAdsSettings = AdUnit_ContentAdsSettings
  { -- | The backup option to be used in instances where no ad is available.
    backupOption :: (Core.Maybe AdUnit_ContentAdsSettings_BackupOption),
    -- | Size of this ad unit. Size values are in the form SIZE/{width}/{height}.
    size :: (Core.Maybe Core.Text),
    -- | Type of this ad unit. Possible values are TEXT, TEXT_IMAGE, IMAGE and LINK.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdUnit_ContentAdsSettings' with the minimum fields required to make a request.
newAdUnit_ContentAdsSettings ::
  AdUnit_ContentAdsSettings
newAdUnit_ContentAdsSettings =
  AdUnit_ContentAdsSettings
    { backupOption = Core.Nothing,
      size = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON AdUnit_ContentAdsSettings where
  parseJSON =
    Core.withObject
      "AdUnit_ContentAdsSettings"
      ( \o ->
          AdUnit_ContentAdsSettings
            Core.<$> (o Core..:? "backupOption")
            Core.<*> (o Core..:? "size")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON AdUnit_ContentAdsSettings where
  toJSON AdUnit_ContentAdsSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("backupOption" Core..=) Core.<$> backupOption,
            ("size" Core..=) Core.<$> size,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | The backup option to be used in instances where no ad is available.
--
-- /See:/ 'newAdUnit_ContentAdsSettings_BackupOption' smart constructor.
data AdUnit_ContentAdsSettings_BackupOption = AdUnit_ContentAdsSettings_BackupOption
  { -- | Color to use when type is set to COLOR. These are represented as six hexadecimal characters, similar to HTML color codes, but without the leading hash.
    color :: (Core.Maybe Core.Text),
    -- | Type of the backup option. Possible values are BLANK, COLOR and URL.
    type' :: (Core.Maybe Core.Text),
    -- | URL to use when type is set to URL.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdUnit_ContentAdsSettings_BackupOption' with the minimum fields required to make a request.
newAdUnit_ContentAdsSettings_BackupOption ::
  AdUnit_ContentAdsSettings_BackupOption
newAdUnit_ContentAdsSettings_BackupOption =
  AdUnit_ContentAdsSettings_BackupOption
    { color = Core.Nothing,
      type' = Core.Nothing,
      url = Core.Nothing
    }

instance
  Core.FromJSON
    AdUnit_ContentAdsSettings_BackupOption
  where
  parseJSON =
    Core.withObject
      "AdUnit_ContentAdsSettings_BackupOption"
      ( \o ->
          AdUnit_ContentAdsSettings_BackupOption
            Core.<$> (o Core..:? "color")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "url")
      )

instance
  Core.ToJSON
    AdUnit_ContentAdsSettings_BackupOption
  where
  toJSON AdUnit_ContentAdsSettings_BackupOption {..} =
    Core.object
      ( Core.catMaybes
          [ ("color" Core..=) Core.<$> color,
            ("type" Core..=) Core.<$> type',
            ("url" Core..=) Core.<$> url
          ]
      )

-- | Settings specific to WAP mobile content ads (AFMC - deprecated).
--
-- /See:/ 'newAdUnit_MobileContentAdsSettings' smart constructor.
data AdUnit_MobileContentAdsSettings = AdUnit_MobileContentAdsSettings
  { -- | The markup language to use for this ad unit.
    markupLanguage :: (Core.Maybe Core.Text),
    -- | The scripting language to use for this ad unit.
    scriptingLanguage :: (Core.Maybe Core.Text),
    -- | Size of this ad unit.
    size :: (Core.Maybe Core.Text),
    -- | Type of this ad unit.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdUnit_MobileContentAdsSettings' with the minimum fields required to make a request.
newAdUnit_MobileContentAdsSettings ::
  AdUnit_MobileContentAdsSettings
newAdUnit_MobileContentAdsSettings =
  AdUnit_MobileContentAdsSettings
    { markupLanguage = Core.Nothing,
      scriptingLanguage = Core.Nothing,
      size = Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    AdUnit_MobileContentAdsSettings
  where
  parseJSON =
    Core.withObject
      "AdUnit_MobileContentAdsSettings"
      ( \o ->
          AdUnit_MobileContentAdsSettings
            Core.<$> (o Core..:? "markupLanguage")
            Core.<*> (o Core..:? "scriptingLanguage")
            Core.<*> (o Core..:? "size")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON AdUnit_MobileContentAdsSettings where
  toJSON AdUnit_MobileContentAdsSettings {..} =
    Core.object
      ( Core.catMaybes
          [ ("markupLanguage" Core..=) Core.<$> markupLanguage,
            ("scriptingLanguage" Core..=)
              Core.<$> scriptingLanguage,
            ("size" Core..=) Core.<$> size,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newAdUnits' smart constructor.
data AdUnits = AdUnits
  { -- | ETag of this response for caching purposes.
    etag :: (Core.Maybe Core.Text),
    -- | The ad units returned in this list response.
    items :: (Core.Maybe [AdUnit]),
    -- | Kind of list this is, in this case adsensehost#adUnits.
    kind :: Core.Text,
    -- | Continuation token used to page through ad units. To retrieve the next page of results, set the next request\'s \"pageToken\" value to this.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdUnits' with the minimum fields required to make a request.
newAdUnits ::
  AdUnits
newAdUnits =
  AdUnits
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = "adsensehost#adUnits",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON AdUnits where
  parseJSON =
    Core.withObject
      "AdUnits"
      ( \o ->
          AdUnits
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind" Core..!= "adsensehost#adUnits")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON AdUnits where
  toJSON AdUnits {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newAssociationSession' smart constructor.
data AssociationSession = AssociationSession
  { -- | Hosted account id of the associated publisher after association. Present if status is ACCEPTED.
    accountId :: (Core.Maybe Core.Text),
    -- | Unique identifier of this association session.
    id :: (Core.Maybe Core.Text),
    -- | Kind of resource this is, in this case adsensehost#associationSession.
    kind :: Core.Text,
    -- | The products to associate with the user. Options: AFC, AFG, AFV, AFS (deprecated), AFMC (deprecated)
    productCodes :: (Core.Maybe [Core.Text]),
    -- | Redirect URL of this association session. Used to redirect users into the AdSense association flow.
    redirectUrl :: (Core.Maybe Core.Text),
    -- | Status of the completed association, available once the association callback token has been verified. One of ACCEPTED, REJECTED, or ERROR.
    status :: (Core.Maybe Core.Text),
    -- | The preferred locale of the user themselves when going through the AdSense association flow.
    userLocale :: (Core.Maybe Core.Text),
    -- | The locale of the user\'s hosted website.
    websiteLocale :: (Core.Maybe Core.Text),
    -- | The URL of the user\'s hosted website.
    websiteUrl :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AssociationSession' with the minimum fields required to make a request.
newAssociationSession ::
  AssociationSession
newAssociationSession =
  AssociationSession
    { accountId = Core.Nothing,
      id = Core.Nothing,
      kind = "adsensehost#associationSession",
      productCodes = Core.Nothing,
      redirectUrl = Core.Nothing,
      status = Core.Nothing,
      userLocale = Core.Nothing,
      websiteLocale = Core.Nothing,
      websiteUrl = Core.Nothing
    }

instance Core.FromJSON AssociationSession where
  parseJSON =
    Core.withObject
      "AssociationSession"
      ( \o ->
          AssociationSession
            Core.<$> (o Core..:? "accountId")
            Core.<*> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "adsensehost#associationSession"
                     )
            Core.<*> (o Core..:? "productCodes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "redirectUrl")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "userLocale")
            Core.<*> (o Core..:? "websiteLocale")
            Core.<*> (o Core..:? "websiteUrl")
      )

instance Core.ToJSON AssociationSession where
  toJSON AssociationSession {..} =
    Core.object
      ( Core.catMaybes
          [ ("accountId" Core..=) Core.<$> accountId,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("productCodes" Core..=) Core.<$> productCodes,
            ("redirectUrl" Core..=) Core.<$> redirectUrl,
            ("status" Core..=) Core.<$> status,
            ("userLocale" Core..=) Core.<$> userLocale,
            ("websiteLocale" Core..=) Core.<$> websiteLocale,
            ("websiteUrl" Core..=) Core.<$> websiteUrl
          ]
      )

--
-- /See:/ 'newCustomChannel' smart constructor.
data CustomChannel = CustomChannel
  { -- | Code of this custom channel, not necessarily unique across ad clients.
    code :: (Core.Maybe Core.Text),
    -- | Unique identifier of this custom channel. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format.
    id :: (Core.Maybe Core.Text),
    -- | Kind of resource this is, in this case adsensehost#customChannel.
    kind :: Core.Text,
    -- | Name of this custom channel.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomChannel' with the minimum fields required to make a request.
newCustomChannel ::
  CustomChannel
newCustomChannel =
  CustomChannel
    { code = Core.Nothing,
      id = Core.Nothing,
      kind = "adsensehost#customChannel",
      name = Core.Nothing
    }

instance Core.FromJSON CustomChannel where
  parseJSON =
    Core.withObject
      "CustomChannel"
      ( \o ->
          CustomChannel
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "id")
            Core.<*> ( o Core..:? "kind"
                         Core..!= "adsensehost#customChannel"
                     )
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON CustomChannel where
  toJSON CustomChannel {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("name" Core..=) Core.<$> name
          ]
      )

--
-- /See:/ 'newCustomChannels' smart constructor.
data CustomChannels = CustomChannels
  { -- | ETag of this response for caching purposes.
    etag :: (Core.Maybe Core.Text),
    -- | The custom channels returned in this list response.
    items :: (Core.Maybe [CustomChannel]),
    -- | Kind of list this is, in this case adsensehost#customChannels.
    kind :: Core.Text,
    -- | Continuation token used to page through custom channels. To retrieve the next page of results, set the next request\'s \"pageToken\" value to this.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CustomChannels' with the minimum fields required to make a request.
newCustomChannels ::
  CustomChannels
newCustomChannels =
  CustomChannels
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = "adsensehost#customChannels",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON CustomChannels where
  parseJSON =
    Core.withObject
      "CustomChannels"
      ( \o ->
          CustomChannels
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "adsensehost#customChannels"
                     )
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON CustomChannels where
  toJSON CustomChannels {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

--
-- /See:/ 'newReport' smart constructor.
data Report = Report
  { -- | The averages of the report. This is the same length as any other row in the report; cells corresponding to dimension columns are empty.
    averages :: (Core.Maybe [Core.Text]),
    -- | The header information of the columns requested in the report. This is a list of headers; one for each dimension in the request, followed by one for each metric in the request.
    headers :: (Core.Maybe [Report_HeadersItem]),
    -- | Kind this is, in this case adsensehost#report.
    kind :: Core.Text,
    -- | The output rows of the report. Each row is a list of cells; one for each dimension in the request, followed by one for each metric in the request. The dimension cells contain strings, and the metric cells contain numbers.
    rows :: (Core.Maybe [[Core.Text]]),
    -- | The total number of rows matched by the report request. Fewer rows may be returned in the response due to being limited by the row count requested or the report row limit.
    totalMatchedRows :: (Core.Maybe Core.Int64),
    -- | The totals of the report. This is the same length as any other row in the report; cells corresponding to dimension columns are empty.
    totals :: (Core.Maybe [Core.Text]),
    -- | Any warnings associated with generation of the report.
    warnings :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Report' with the minimum fields required to make a request.
newReport ::
  Report
newReport =
  Report
    { averages = Core.Nothing,
      headers = Core.Nothing,
      kind = "adsensehost#report",
      rows = Core.Nothing,
      totalMatchedRows = Core.Nothing,
      totals = Core.Nothing,
      warnings = Core.Nothing
    }

instance Core.FromJSON Report where
  parseJSON =
    Core.withObject
      "Report"
      ( \o ->
          Report
            Core.<$> (o Core..:? "averages" Core..!= Core.mempty)
            Core.<*> (o Core..:? "headers" Core..!= Core.mempty)
            Core.<*> (o Core..:? "kind" Core..!= "adsensehost#report")
            Core.<*> (o Core..:? "rows" Core..!= Core.mempty)
            Core.<*> (o Core..:? "totalMatchedRows")
            Core.<*> (o Core..:? "totals" Core..!= Core.mempty)
            Core.<*> (o Core..:? "warnings" Core..!= Core.mempty)
      )

instance Core.ToJSON Report where
  toJSON Report {..} =
    Core.object
      ( Core.catMaybes
          [ ("averages" Core..=) Core.<$> averages,
            ("headers" Core..=) Core.<$> headers,
            Core.Just ("kind" Core..= kind),
            ("rows" Core..=) Core.<$> rows,
            ("totalMatchedRows" Core..=) Core.. Core.AsText
              Core.<$> totalMatchedRows,
            ("totals" Core..=) Core.<$> totals,
            ("warnings" Core..=) Core.<$> warnings
          ]
      )

--
-- /See:/ 'newReport_HeadersItem' smart constructor.
data Report_HeadersItem = Report_HeadersItem
  { -- | The currency of this column. Only present if the header type is METRIC_CURRENCY.
    currency :: (Core.Maybe Core.Text),
    -- | The name of the header.
    name :: (Core.Maybe Core.Text),
    -- | The type of the header; one of DIMENSION, METRIC/TALLY, METRIC/RATIO, or METRIC_CURRENCY.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Report_HeadersItem' with the minimum fields required to make a request.
newReport_HeadersItem ::
  Report_HeadersItem
newReport_HeadersItem =
  Report_HeadersItem
    { currency = Core.Nothing,
      name = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Report_HeadersItem where
  parseJSON =
    Core.withObject
      "Report_HeadersItem"
      ( \o ->
          Report_HeadersItem
            Core.<$> (o Core..:? "currency")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Report_HeadersItem where
  toJSON Report_HeadersItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("currency" Core..=) Core.<$> currency,
            ("name" Core..=) Core.<$> name,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newUrlChannel' smart constructor.
data UrlChannel = UrlChannel
  { -- | Unique identifier of this URL channel. This should be considered an opaque identifier; it is not safe to rely on it being in any particular format.
    id :: (Core.Maybe Core.Text),
    -- | Kind of resource this is, in this case adsensehost#urlChannel.
    kind :: Core.Text,
    -- | URL Pattern of this URL channel. Does not include \"http:\/\/\" or \"https:\/\/\". Example: www.example.com\/home
    urlPattern :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UrlChannel' with the minimum fields required to make a request.
newUrlChannel ::
  UrlChannel
newUrlChannel =
  UrlChannel
    { id = Core.Nothing,
      kind = "adsensehost#urlChannel",
      urlPattern = Core.Nothing
    }

instance Core.FromJSON UrlChannel where
  parseJSON =
    Core.withObject
      "UrlChannel"
      ( \o ->
          UrlChannel
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "kind" Core..!= "adsensehost#urlChannel")
            Core.<*> (o Core..:? "urlPattern")
      )

instance Core.ToJSON UrlChannel where
  toJSON UrlChannel {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            Core.Just ("kind" Core..= kind),
            ("urlPattern" Core..=) Core.<$> urlPattern
          ]
      )

--
-- /See:/ 'newUrlChannels' smart constructor.
data UrlChannels = UrlChannels
  { -- | ETag of this response for caching purposes.
    etag :: (Core.Maybe Core.Text),
    -- | The URL channels returned in this list response.
    items :: (Core.Maybe [UrlChannel]),
    -- | Kind of list this is, in this case adsensehost#urlChannels.
    kind :: Core.Text,
    -- | Continuation token used to page through URL channels. To retrieve the next page of results, set the next request\'s \"pageToken\" value to this.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UrlChannels' with the minimum fields required to make a request.
newUrlChannels ::
  UrlChannels
newUrlChannels =
  UrlChannels
    { etag = Core.Nothing,
      items = Core.Nothing,
      kind = "adsensehost#urlChannels",
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON UrlChannels where
  parseJSON =
    Core.withObject
      "UrlChannels"
      ( \o ->
          UrlChannels
            Core.<$> (o Core..:? "etag")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
            Core.<*> ( o Core..:? "kind"
                         Core..!= "adsensehost#urlChannels"
                     )
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON UrlChannels where
  toJSON UrlChannels {..} =
    Core.object
      ( Core.catMaybes
          [ ("etag" Core..=) Core.<$> etag,
            ("items" Core..=) Core.<$> items,
            Core.Just ("kind" Core..= kind),
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )
