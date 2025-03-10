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
-- Module      : Gogol.SafeBrowsing.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.SafeBrowsing.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem
    GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem
      ( GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem_THREATATTRIBUTEUNSPECIFIED,
        GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem_Canary,
        GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem_FRAMEONLY,
        ..
      ),

    -- * GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType
    GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType
      ( GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType_THREATTYPEUNSPECIFIED,
        GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType_Malware,
        GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType_SOCIALENGINEERING,
        GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType_UNWANTEDSOFTWARE,
        GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType_POTENTIALLYHARMFULAPPLICATION,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

newtype GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem = GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem {fromGoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown attribute. If this is returned by the server, the client shall disregard the enclosing @FullHashDetail@ altogether.
pattern GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem_THREATATTRIBUTEUNSPECIFIED :: GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem
pattern GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem_THREATATTRIBUTEUNSPECIFIED = GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem "THREAT_ATTRIBUTE_UNSPECIFIED"

-- | Indicates that the threat_type should not be used for enforcement.
pattern GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem_Canary :: GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem
pattern GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem_Canary = GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem "CANARY"

-- | Indicates that the threat_type should only be used for enforcement on frames.
pattern GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem_FRAMEONLY :: GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem
pattern GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem_FRAMEONLY = GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem "FRAME_ONLY"

{-# COMPLETE
  GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem_THREATATTRIBUTEUNSPECIFIED,
  GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem_Canary,
  GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem_FRAMEONLY,
  GoogleSecuritySafebrowsingV5FullHashFullHashDetail_AttributesItem
  #-}

-- | The type of threat. This field will never be empty.
newtype GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType = GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType {fromGoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unknown threat type. If this is returned by the server, the client shall disregard the enclosing @FullHashDetail@ altogether.
pattern GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType_THREATTYPEUNSPECIFIED :: GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType
pattern GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType_THREATTYPEUNSPECIFIED = GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType "THREAT_TYPE_UNSPECIFIED"

-- | Malware threat type. Malware is any software or mobile application specifically designed to harm a computer, a mobile device, the software it\'s running, or its users. Malware exhibits malicious behavior that can include installing software without user consent and installing harmful software such as viruses. More information can be found <https://developers.google.com/search/docs/monitor-debug/security/malware here>.
pattern GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType_Malware :: GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType
pattern GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType_Malware = GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType "MALWARE"

-- | Social engineering threat type. Social engineering pages falsely purport to act on behalf of a third party with the intention of confusing viewers into performing an action with which the viewer would only trust a true agent of that third party. Phishing is a type of social engineering that tricks the viewer into performing the specific action of providing information, such as login credentials. More information can be found <https://developers.google.com/search/docs/monitor-debug/security/social-engineering here>.
pattern GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType_SOCIALENGINEERING :: GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType
pattern GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType_SOCIALENGINEERING = GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType "SOCIAL_ENGINEERING"

-- | Unwanted software threat type. Unwanted software is any software that does not adhere to <https://www.google.com/about/software-principles.html Google\'s Software Principles> but isn\'t malware.
pattern GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType_UNWANTEDSOFTWARE :: GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType
pattern GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType_UNWANTEDSOFTWARE = GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType "UNWANTED_SOFTWARE"

-- | Potentially harmful application threat type <https://developers.google.com/android/play-protect/potentially-harmful-applications as used by Google Play Protect for the Play Store>.
pattern GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType_POTENTIALLYHARMFULAPPLICATION :: GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType
pattern GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType_POTENTIALLYHARMFULAPPLICATION = GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType "POTENTIALLY_HARMFUL_APPLICATION"

{-# COMPLETE
  GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType_THREATTYPEUNSPECIFIED,
  GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType_Malware,
  GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType_SOCIALENGINEERING,
  GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType_UNWANTEDSOFTWARE,
  GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType_POTENTIALLYHARMFULAPPLICATION,
  GoogleSecuritySafebrowsingV5FullHashFullHashDetail_ThreatType
  #-}
