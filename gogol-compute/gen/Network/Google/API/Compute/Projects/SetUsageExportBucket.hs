{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Projects.SetUsageExportBucket
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Enables the usage export feature and sets the usage export bucket where
-- reports are stored. If you provide an empty request body using this
-- method, the usage export feature will be disabled.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.projects.setUsageExportBucket@.
module Network.Google.API.Compute.Projects.SetUsageExportBucket
    (
    -- * REST Resource
      ProjectsSetUsageExportBucketAPI

    -- * Creating a Request
    , projectsSetUsageExportBucket'
    , ProjectsSetUsageExportBucket'

    -- * Request Lenses
    , psuebQuotaUser
    , psuebPrettyPrint
    , psuebProject
    , psuebUserIp
    , psuebKey
    , psuebOauthToken
    , psuebFields
    , psuebAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.projects.setUsageExportBucket which the
-- 'ProjectsSetUsageExportBucket'' request conforms to.
type ProjectsSetUsageExportBucketAPI =
     Capture "project" Text :>
       "setUsageExportBucket" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Enables the usage export feature and sets the usage export bucket where
-- reports are stored. If you provide an empty request body using this
-- method, the usage export feature will be disabled.
--
-- /See:/ 'projectsSetUsageExportBucket'' smart constructor.
data ProjectsSetUsageExportBucket' = ProjectsSetUsageExportBucket'
    { _psuebQuotaUser   :: !(Maybe Text)
    , _psuebPrettyPrint :: !Bool
    , _psuebProject     :: !Text
    , _psuebUserIp      :: !(Maybe Text)
    , _psuebKey         :: !(Maybe Text)
    , _psuebOauthToken  :: !(Maybe Text)
    , _psuebFields      :: !(Maybe Text)
    , _psuebAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSetUsageExportBucket'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psuebQuotaUser'
--
-- * 'psuebPrettyPrint'
--
-- * 'psuebProject'
--
-- * 'psuebUserIp'
--
-- * 'psuebKey'
--
-- * 'psuebOauthToken'
--
-- * 'psuebFields'
--
-- * 'psuebAlt'
projectsSetUsageExportBucket'
    :: Text -- ^ 'project'
    -> ProjectsSetUsageExportBucket'
projectsSetUsageExportBucket' pPsuebProject_ =
    ProjectsSetUsageExportBucket'
    { _psuebQuotaUser = Nothing
    , _psuebPrettyPrint = True
    , _psuebProject = pPsuebProject_
    , _psuebUserIp = Nothing
    , _psuebKey = Nothing
    , _psuebOauthToken = Nothing
    , _psuebFields = Nothing
    , _psuebAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
psuebQuotaUser :: Lens' ProjectsSetUsageExportBucket' (Maybe Text)
psuebQuotaUser
  = lens _psuebQuotaUser
      (\ s a -> s{_psuebQuotaUser = a})

-- | Returns response with indentations and line breaks.
psuebPrettyPrint :: Lens' ProjectsSetUsageExportBucket' Bool
psuebPrettyPrint
  = lens _psuebPrettyPrint
      (\ s a -> s{_psuebPrettyPrint = a})

-- | Project ID for this request.
psuebProject :: Lens' ProjectsSetUsageExportBucket' Text
psuebProject
  = lens _psuebProject (\ s a -> s{_psuebProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
psuebUserIp :: Lens' ProjectsSetUsageExportBucket' (Maybe Text)
psuebUserIp
  = lens _psuebUserIp (\ s a -> s{_psuebUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psuebKey :: Lens' ProjectsSetUsageExportBucket' (Maybe Text)
psuebKey = lens _psuebKey (\ s a -> s{_psuebKey = a})

-- | OAuth 2.0 token for the current user.
psuebOauthToken :: Lens' ProjectsSetUsageExportBucket' (Maybe Text)
psuebOauthToken
  = lens _psuebOauthToken
      (\ s a -> s{_psuebOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
psuebFields :: Lens' ProjectsSetUsageExportBucket' (Maybe Text)
psuebFields
  = lens _psuebFields (\ s a -> s{_psuebFields = a})

-- | Data format for the response.
psuebAlt :: Lens' ProjectsSetUsageExportBucket' Alt
psuebAlt = lens _psuebAlt (\ s a -> s{_psuebAlt = a})

instance GoogleRequest ProjectsSetUsageExportBucket'
         where
        type Rs ProjectsSetUsageExportBucket' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u
          ProjectsSetUsageExportBucket'{..}
          = go _psuebQuotaUser (Just _psuebPrettyPrint)
              _psuebProject
              _psuebUserIp
              _psuebKey
              _psuebOauthToken
              _psuebFields
              (Just _psuebAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsSetUsageExportBucketAPI)
                      r
                      u
