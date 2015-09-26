{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

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
    -- * API Definition
      oauth2


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
    ) where

import           Network.Google.OAuth2.Types.Product
import           Network.Google.OAuth2.Types.Sum
import           Network.Google.Prelude

oauth2 :: a
oauth2 = error "oauth2"
