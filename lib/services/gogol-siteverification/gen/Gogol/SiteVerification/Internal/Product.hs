{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SiteVerification.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.SiteVerification.Internal.Product
  ( -- * SiteVerificationWebResourceGettokenRequest
    SiteVerificationWebResourceGettokenRequest (..),
    newSiteVerificationWebResourceGettokenRequest,

    -- * SiteVerificationWebResourceGettokenRequest_Site
    SiteVerificationWebResourceGettokenRequest_Site (..),
    newSiteVerificationWebResourceGettokenRequest_Site,

    -- * SiteVerificationWebResourceGettokenResponse
    SiteVerificationWebResourceGettokenResponse (..),
    newSiteVerificationWebResourceGettokenResponse,

    -- * SiteVerificationWebResourceListResponse
    SiteVerificationWebResourceListResponse (..),
    newSiteVerificationWebResourceListResponse,

    -- * SiteVerificationWebResourceResource
    SiteVerificationWebResourceResource (..),
    newSiteVerificationWebResourceResource,

    -- * SiteVerificationWebResourceResource_Site
    SiteVerificationWebResourceResource_Site (..),
    newSiteVerificationWebResourceResource_Site,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SiteVerification.Internal.Sum

--
-- /See:/ 'newSiteVerificationWebResourceGettokenRequest' smart constructor.
data SiteVerificationWebResourceGettokenRequest = SiteVerificationWebResourceGettokenRequest
  { -- | The site for which a verification token will be generated.
    site :: (Core.Maybe SiteVerificationWebResourceGettokenRequest_Site),
    -- | The verification method that will be used to verify this site. For sites, \'FILE\' or \'META\' methods may be used. For domains, only \'DNS\' may be used.
    verificationMethod :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SiteVerificationWebResourceGettokenRequest' with the minimum fields required to make a request.
newSiteVerificationWebResourceGettokenRequest ::
  SiteVerificationWebResourceGettokenRequest
newSiteVerificationWebResourceGettokenRequest =
  SiteVerificationWebResourceGettokenRequest
    { site = Core.Nothing,
      verificationMethod = Core.Nothing
    }

instance Core.FromJSON SiteVerificationWebResourceGettokenRequest where
  parseJSON =
    Core.withObject
      "SiteVerificationWebResourceGettokenRequest"
      ( \o ->
          SiteVerificationWebResourceGettokenRequest
            Core.<$> (o Core..:? "site")
            Core.<*> (o Core..:? "verificationMethod")
      )

instance Core.ToJSON SiteVerificationWebResourceGettokenRequest where
  toJSON SiteVerificationWebResourceGettokenRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("site" Core..=) Core.<$> site,
            ("verificationMethod" Core..=) Core.<$> verificationMethod
          ]
      )

-- | The site for which a verification token will be generated.
--
-- /See:/ 'newSiteVerificationWebResourceGettokenRequest_Site' smart constructor.
data SiteVerificationWebResourceGettokenRequest_Site = SiteVerificationWebResourceGettokenRequest_Site
  { -- | The site identifier. If the type is set to SITE, the identifier is a URL. If the type is set to INET_DOMAIN, the site identifier is a domain name.
    identifier :: (Core.Maybe Core.Text),
    -- | The type of resource to be verified. Can be SITE or INET_DOMAIN (domain name).
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SiteVerificationWebResourceGettokenRequest_Site' with the minimum fields required to make a request.
newSiteVerificationWebResourceGettokenRequest_Site ::
  SiteVerificationWebResourceGettokenRequest_Site
newSiteVerificationWebResourceGettokenRequest_Site =
  SiteVerificationWebResourceGettokenRequest_Site
    { identifier =
        Core.Nothing,
      type' = Core.Nothing
    }

instance
  Core.FromJSON
    SiteVerificationWebResourceGettokenRequest_Site
  where
  parseJSON =
    Core.withObject
      "SiteVerificationWebResourceGettokenRequest_Site"
      ( \o ->
          SiteVerificationWebResourceGettokenRequest_Site
            Core.<$> (o Core..:? "identifier")
            Core.<*> (o Core..:? "type")
      )

instance
  Core.ToJSON
    SiteVerificationWebResourceGettokenRequest_Site
  where
  toJSON SiteVerificationWebResourceGettokenRequest_Site {..} =
    Core.object
      ( Core.catMaybes
          [ ("identifier" Core..=) Core.<$> identifier,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newSiteVerificationWebResourceGettokenResponse' smart constructor.
data SiteVerificationWebResourceGettokenResponse = SiteVerificationWebResourceGettokenResponse
  { -- | The verification method to use in conjunction with this token. For FILE, the token should be placed in the top-level directory of the site, stored inside a file of the same name. For META, the token should be placed in the HEAD tag of the default page that is loaded for the site. For DNS, the token should be placed in a TXT record of the domain.
    method :: (Core.Maybe Core.Text),
    -- | The verification token. The token must be placed appropriately in order for verification to succeed.
    token :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SiteVerificationWebResourceGettokenResponse' with the minimum fields required to make a request.
newSiteVerificationWebResourceGettokenResponse ::
  SiteVerificationWebResourceGettokenResponse
newSiteVerificationWebResourceGettokenResponse =
  SiteVerificationWebResourceGettokenResponse
    { method =
        Core.Nothing,
      token = Core.Nothing
    }

instance Core.FromJSON SiteVerificationWebResourceGettokenResponse where
  parseJSON =
    Core.withObject
      "SiteVerificationWebResourceGettokenResponse"
      ( \o ->
          SiteVerificationWebResourceGettokenResponse
            Core.<$> (o Core..:? "method")
            Core.<*> (o Core..:? "token")
      )

instance Core.ToJSON SiteVerificationWebResourceGettokenResponse where
  toJSON SiteVerificationWebResourceGettokenResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("method" Core..=) Core.<$> method,
            ("token" Core..=) Core.<$> token
          ]
      )

--
-- /See:/ 'newSiteVerificationWebResourceListResponse' smart constructor.
newtype SiteVerificationWebResourceListResponse = SiteVerificationWebResourceListResponse
  { -- | The list of sites that are owned by the authenticated user.
    items :: (Core.Maybe [SiteVerificationWebResourceResource])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SiteVerificationWebResourceListResponse' with the minimum fields required to make a request.
newSiteVerificationWebResourceListResponse ::
  SiteVerificationWebResourceListResponse
newSiteVerificationWebResourceListResponse =
  SiteVerificationWebResourceListResponse {items = Core.Nothing}

instance Core.FromJSON SiteVerificationWebResourceListResponse where
  parseJSON =
    Core.withObject
      "SiteVerificationWebResourceListResponse"
      ( \o ->
          SiteVerificationWebResourceListResponse
            Core.<$> (o Core..:? "items")
      )

instance Core.ToJSON SiteVerificationWebResourceListResponse where
  toJSON SiteVerificationWebResourceListResponse {..} =
    Core.object (Core.catMaybes [("items" Core..=) Core.<$> items])

--
-- /See:/ 'newSiteVerificationWebResourceResource' smart constructor.
data SiteVerificationWebResourceResource = SiteVerificationWebResourceResource
  { -- | The string used to identify this site. This value should be used in the \"id\" portion of the REST URL for the Get, Update, and Delete operations.
    id :: (Core.Maybe Core.Text),
    -- | The email addresses of all verified owners.
    owners :: (Core.Maybe [Core.Text]),
    -- | The address and type of a site that is verified or will be verified.
    site :: (Core.Maybe SiteVerificationWebResourceResource_Site)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SiteVerificationWebResourceResource' with the minimum fields required to make a request.
newSiteVerificationWebResourceResource ::
  SiteVerificationWebResourceResource
newSiteVerificationWebResourceResource =
  SiteVerificationWebResourceResource
    { id = Core.Nothing,
      owners = Core.Nothing,
      site = Core.Nothing
    }

instance Core.FromJSON SiteVerificationWebResourceResource where
  parseJSON =
    Core.withObject
      "SiteVerificationWebResourceResource"
      ( \o ->
          SiteVerificationWebResourceResource
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "owners")
            Core.<*> (o Core..:? "site")
      )

instance Core.ToJSON SiteVerificationWebResourceResource where
  toJSON SiteVerificationWebResourceResource {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("owners" Core..=) Core.<$> owners,
            ("site" Core..=) Core.<$> site
          ]
      )

-- | The address and type of a site that is verified or will be verified.
--
-- /See:/ 'newSiteVerificationWebResourceResource_Site' smart constructor.
data SiteVerificationWebResourceResource_Site = SiteVerificationWebResourceResource_Site
  { -- | The site identifier. If the type is set to SITE, the identifier is a URL. If the type is set to INET_DOMAIN, the site identifier is a domain name.
    identifier :: (Core.Maybe Core.Text),
    -- | The site type. Can be SITE or INET_DOMAIN (domain name).
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SiteVerificationWebResourceResource_Site' with the minimum fields required to make a request.
newSiteVerificationWebResourceResource_Site ::
  SiteVerificationWebResourceResource_Site
newSiteVerificationWebResourceResource_Site =
  SiteVerificationWebResourceResource_Site
    { identifier =
        Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON SiteVerificationWebResourceResource_Site where
  parseJSON =
    Core.withObject
      "SiteVerificationWebResourceResource_Site"
      ( \o ->
          SiteVerificationWebResourceResource_Site
            Core.<$> (o Core..:? "identifier")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON SiteVerificationWebResourceResource_Site where
  toJSON SiteVerificationWebResourceResource_Site {..} =
    Core.object
      ( Core.catMaybes
          [ ("identifier" Core..=) Core.<$> identifier,
            ("type" Core..=) Core.<$> type'
          ]
      )
