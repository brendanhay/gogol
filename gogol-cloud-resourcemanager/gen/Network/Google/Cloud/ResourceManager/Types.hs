{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Cloud.ResourceManager.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Cloud.ResourceManager.Types
    (

    -- * Binding
      Binding
    , binding
    , bMembers
    , bRole

    -- * Empty
    , Empty
    , empty

    -- * GetIamPolicyRequest
    , GetIamPolicyRequest
    , getIamPolicyRequest

    -- * ListOrganizationsResponse
    , ListOrganizationsResponse
    , listOrganizationsResponse
    , lorNextPageToken
    , lorOrganizations

    -- * ListProjectsResponse
    , ListProjectsResponse
    , listProjectsResponse
    , lprNextPageToken
    , lprProjects

    -- * Organization
    , Organization
    , organization
    , oOwner
    , oDisplayName
    , oOrganizationId

    -- * OrganizationOwner
    , OrganizationOwner
    , organizationOwner
    , ooDirectoryCustomerId

    -- * Policy
    , Policy
    , policy
    , pEtag
    , pVersion
    , pBindings

    -- * Project
    , Project
    , project
    , pParent
    , pProjectNumber
    , pName
    , pLabels
    , pProjectId
    , pLifecycleState
    , pCreateTime

    -- * ProjectLabels
    , ProjectLabels
    , projectLabels

    -- * ResourceId
    , ResourceId
    , resourceId
    , riId
    , riType

    -- * SetIamPolicyRequest
    , SetIamPolicyRequest
    , setIamPolicyRequest
    , siprPolicy

    -- * TestIamPermissionsRequest
    , TestIamPermissionsRequest
    , testIamPermissionsRequest
    , tiamprPermissions

    -- * TestIamPermissionsResponse
    , TestIamPermissionsResponse
    , testIamPermissionsResponse
    , tiprPermissions
    ) where

import           Network.Google.Cloud.ResourceManager.Types.Product
import           Network.Google.Cloud.ResourceManager.Types.Sum
import           Network.Google.Prelude
