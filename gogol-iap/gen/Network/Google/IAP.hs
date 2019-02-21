{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.IAP
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Controls access to cloud applications running on Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference>
module Network.Google.IAP
    (
    -- * Service Configuration
      iAPService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , IAPAPI

    -- * Resources

    -- ** iap.getIamPolicy
    , module Network.Google.Resource.IAP.GetIAMPolicy

    -- ** iap.setIamPolicy
    , module Network.Google.Resource.IAP.SetIAMPolicy

    -- ** iap.testIamPermissions
    , module Network.Google.Resource.IAP.TestIAMPermissions

    -- * Types

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprPolicy

    -- ** Xgafv
    , Xgafv (..)

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import           Network.Google.IAP.Types
import           Network.Google.Prelude
import           Network.Google.Resource.IAP.GetIAMPolicy
import           Network.Google.Resource.IAP.SetIAMPolicy
import           Network.Google.Resource.IAP.TestIAMPermissions

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Identity-Aware Proxy API service.
type IAPAPI =
     GetIAMPolicyResource :<|> SetIAMPolicyResource :<|>
       TestIAMPermissionsResource
