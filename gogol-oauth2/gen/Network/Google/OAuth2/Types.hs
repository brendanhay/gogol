{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.OAuth2.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.OAuth2.Types
    (
    -- * Service URL
      oAuth2URL

    -- * Alt
    , Alt (..)

    -- * Userinfoplus
    , Userinfoplus
    , userinfoplus
    , uHd
    , uEmail
    , uLink
    , uLocale
    , uGivenName
    , uFamilyName
    , uPicture
    , uGender
    , uName
    , uVerifiedEmail
    , uId

    -- * Jwk
    , Jwk
    , jwk
    , jwkKeys

    -- * JwkItemKeys
    , JwkItemKeys
    , jwkItemKeys
    , jikAlg
    , jikUse
    , jikKid
    , jikN
    , jikE
    , jikKty

    -- * Tokeninfo
    , Tokeninfo
    , tokeninfo
    , tAudience
    , tEmail
    , tExpiresIn
    , tAccessType
    , tScope
    , tVerifiedEmail
    , tUserId
    , tTokenHandle
    , tIssuedTo
    ) where

import           Network.Google.OAuth2.Types.Product
import           Network.Google.OAuth2.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v2' of the Google OAuth2 API.
oAuth2URL :: BaseUrl
oAuth2URL
  = BaseUrl Https "https://www.googleapis.com/" 443
