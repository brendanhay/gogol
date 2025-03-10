{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.SafeBrowsing.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.SafeBrowsing.Internal.Product
  ( -- * GoogleSecuritySafebrowsingV5FullHash
    GoogleSecuritySafebrowsingV5FullHash (..),
    newGoogleSecuritySafebrowsingV5FullHash,

    -- * GoogleSecuritySafebrowsingV5FullHashFullHashDetail
    GoogleSecuritySafebrowsingV5FullHashFullHashDetail (..),
    newGoogleSecuritySafebrowsingV5FullHashFullHashDetail,

    -- * GoogleSecuritySafebrowsingV5SearchHashesResponse
    GoogleSecuritySafebrowsingV5SearchHashesResponse (..),
    newGoogleSecuritySafebrowsingV5SearchHashesResponse,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SafeBrowsing.Internal.Sum

-- | The full hash identified with one or more matches.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV5FullHash' smart constructor.
data GoogleSecuritySafebrowsingV5FullHash = GoogleSecuritySafebrowsingV5FullHash
  { -- | The matching full hash. This is the SHA256 hash. The length will be exactly 32 bytes.
    fullHash :: (Core.Maybe Core.Base64),
    -- | Unordered list. A repeated field identifying the details relevant to this full hash.
    fullHashDetails :: (Core.Maybe [GoogleSecuritySafebrowsingV5FullHashFullHashDetail])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV5FullHash' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV5FullHash ::
  GoogleSecuritySafebrowsingV5FullHash
newGoogleSecuritySafebrowsingV5FullHash =
  GoogleSecuritySafebrowsingV5FullHash
    { fullHash = Core.Nothing,
      fullHashDetails = Core.Nothing
    }

instance Core.FromJSON GoogleSecuritySafebrowsingV5FullHash where
  parseJSON =
    Core.withObject
      "GoogleSecuritySafebrowsingV5FullHash"
      ( \o ->
          GoogleSecuritySafebrowsingV5FullHash
            Core.<$> (o Core..:? "fullHash")
            Core.<*> (o Core..:? "fullHashDetails")
      )

instance Core.ToJSON GoogleSecuritySafebrowsingV5FullHash where
  toJSON GoogleSecuritySafebrowsingV5FullHash {..} =
    Core.object
      ( Core.catMaybes
          [ ("fullHash" Core..=) Core.<$> fullHash,
            ("fullHashDetails" Core..=) Core.<$> fullHashDetails
          ]
      )

-- | Details about a matching full hash. An important note about forward compatibility: new threat types and threat attributes may be added by the server at any time; those additions are considered minor version changes. It is Google\'s policy not to expose minor version numbers in APIs (see https:\/\/cloud.google.com\/apis\/design\/versioning for the versioning policy), so clients MUST be prepared to receive @FullHashDetail@ messages containing @ThreatType@ enum values or @ThreatAttribute@ enum values that are considered invalid by the client. Therefore, it is the client\'s responsibility to check for the validity of all @ThreatType@ and @ThreatAttribute@ enum values; if any value is considered invalid, the client MUST disregard the entire @FullHashDetail@ message.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV5FullHashFullHashDetail' smart constructor.
data GoogleSecuritySafebrowsingV5FullHashFullHashDetail = GoogleSecuritySafebrowsingV5FullHashFullHashDetail
  { -- | Unordered list. Additional attributes about those full hashes. This may be empty.
    attributes ::
      ( Core.Maybe
          [GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem]
      ),
    -- | The type of threat. This field will never be empty.
    threatType ::
      ( Core.Maybe
          GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType
      )
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV5FullHashFullHashDetail' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV5FullHashFullHashDetail ::
  GoogleSecuritySafebrowsingV5FullHashFullHashDetail
newGoogleSecuritySafebrowsingV5FullHashFullHashDetail =
  GoogleSecuritySafebrowsingV5FullHashFullHashDetail
    { attributes =
        Core.Nothing,
      threatType = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleSecuritySafebrowsingV5FullHashFullHashDetail
  where
  parseJSON =
    Core.withObject
      "GoogleSecuritySafebrowsingV5FullHashFullHashDetail"
      ( \o ->
          GoogleSecuritySafebrowsingV5FullHashFullHashDetail
            Core.<$> (o Core..:? "attributes")
            Core.<*> (o Core..:? "threatType")
      )

instance
  Core.ToJSON
    GoogleSecuritySafebrowsingV5FullHashFullHashDetail
  where
  toJSON GoogleSecuritySafebrowsingV5FullHashFullHashDetail {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributes" Core..=) Core.<$> attributes,
            ("threatType" Core..=) Core.<$> threatType
          ]
      )

-- | The response returned after searching threat hashes. If nothing is found, the server will return an OK status (HTTP status code 200) with the @full_hashes@ field empty, rather than returning a NOT/FOUND status (HTTP status code 404). __What\'s new in V5__: There is a separation between @FullHash@ and @FullHashDetail@. In the case when a hash represents a site having multiple threats (e.g. both MALWARE and SOCIAL/ENGINEERING), the full hash does not need to be sent twice as in V4. Furthermore, the cache duration has been simplified into a single @cache_duration@ field.
--
-- /See:/ 'newGoogleSecuritySafebrowsingV5SearchHashesResponse' smart constructor.
data GoogleSecuritySafebrowsingV5SearchHashesResponse = GoogleSecuritySafebrowsingV5SearchHashesResponse
  { -- | The client-side cache duration. The client MUST add this duration to the current time to determine the expiration time. The expiration time then applies to every hash prefix queried by the client in the request, regardless of how many full hashes are returned in the response. Even if the server returns no full hashes for a particular hash prefix, this fact MUST also be cached by the client. If and only if the field @full_hashes@ is empty, the client MAY increase the @cache_duration@ to determine a new expiration that is later than that specified by the server. In any case, the increased cache duration must not be longer than 24 hours. Important: the client MUST NOT assume that the server will return the same cache duration for all responses. The server MAY choose different cache durations for different responses depending on the situation.
    cacheDuration :: (Core.Maybe Core.Duration),
    -- | Unordered list. The unordered list of full hashes found.
    fullHashes :: (Core.Maybe [GoogleSecuritySafebrowsingV5FullHash])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleSecuritySafebrowsingV5SearchHashesResponse' with the minimum fields required to make a request.
newGoogleSecuritySafebrowsingV5SearchHashesResponse ::
  GoogleSecuritySafebrowsingV5SearchHashesResponse
newGoogleSecuritySafebrowsingV5SearchHashesResponse =
  GoogleSecuritySafebrowsingV5SearchHashesResponse
    { cacheDuration =
        Core.Nothing,
      fullHashes = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleSecuritySafebrowsingV5SearchHashesResponse
  where
  parseJSON =
    Core.withObject
      "GoogleSecuritySafebrowsingV5SearchHashesResponse"
      ( \o ->
          GoogleSecuritySafebrowsingV5SearchHashesResponse
            Core.<$> (o Core..:? "cacheDuration")
            Core.<*> (o Core..:? "fullHashes")
      )

instance
  Core.ToJSON
    GoogleSecuritySafebrowsingV5SearchHashesResponse
  where
  toJSON GoogleSecuritySafebrowsingV5SearchHashesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("cacheDuration" Core..=) Core.<$> cacheDuration,
            ("fullHashes" Core..=) Core.<$> fullHashes
          ]
      )
