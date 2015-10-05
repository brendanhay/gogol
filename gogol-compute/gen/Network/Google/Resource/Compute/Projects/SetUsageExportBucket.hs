{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Compute.Projects.SetUsageExportBucket
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
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeProjectsSetUsageExportBucket@.
module Network.Google.Resource.Compute.Projects.SetUsageExportBucket
    (
    -- * REST Resource
      ProjectsSetUsageExportBucketResource

    -- * Creating a Request
    , projectsSetUsageExportBucket'
    , ProjectsSetUsageExportBucket'

    -- * Request Lenses
    , psuebQuotaUser
    , psuebPrettyPrint
    , psuebProject
    , psuebUserIP
    , psuebPayload
    , psuebKey
    , psuebOAuthToken
    , psuebFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeProjectsSetUsageExportBucket@ which the
-- 'ProjectsSetUsageExportBucket'' request conforms to.
type ProjectsSetUsageExportBucketResource =
     Capture "project" Text :>
       "setUsageExportBucket" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] UsageExportLocation :>
                         Post '[JSON] Operation

-- | Enables the usage export feature and sets the usage export bucket where
-- reports are stored. If you provide an empty request body using this
-- method, the usage export feature will be disabled.
--
-- /See:/ 'projectsSetUsageExportBucket'' smart constructor.
data ProjectsSetUsageExportBucket' = ProjectsSetUsageExportBucket'
    { _psuebQuotaUser   :: !(Maybe Text)
    , _psuebPrettyPrint :: !Bool
    , _psuebProject     :: !Text
    , _psuebUserIP      :: !(Maybe Text)
    , _psuebPayload     :: !UsageExportLocation
    , _psuebKey         :: !(Maybe Key)
    , _psuebOAuthToken  :: !(Maybe OAuthToken)
    , _psuebFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'psuebUserIP'
--
-- * 'psuebPayload'
--
-- * 'psuebKey'
--
-- * 'psuebOAuthToken'
--
-- * 'psuebFields'
projectsSetUsageExportBucket'
    :: Text -- ^ 'project'
    -> UsageExportLocation -- ^ 'payload'
    -> ProjectsSetUsageExportBucket'
projectsSetUsageExportBucket' pPsuebProject_ pPsuebPayload_ =
    ProjectsSetUsageExportBucket'
    { _psuebQuotaUser = Nothing
    , _psuebPrettyPrint = True
    , _psuebProject = pPsuebProject_
    , _psuebUserIP = Nothing
    , _psuebPayload = pPsuebPayload_
    , _psuebKey = Nothing
    , _psuebOAuthToken = Nothing
    , _psuebFields = Nothing
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
psuebUserIP :: Lens' ProjectsSetUsageExportBucket' (Maybe Text)
psuebUserIP
  = lens _psuebUserIP (\ s a -> s{_psuebUserIP = a})

-- | Multipart request metadata.
psuebPayload :: Lens' ProjectsSetUsageExportBucket' UsageExportLocation
psuebPayload
  = lens _psuebPayload (\ s a -> s{_psuebPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psuebKey :: Lens' ProjectsSetUsageExportBucket' (Maybe Key)
psuebKey = lens _psuebKey (\ s a -> s{_psuebKey = a})

-- | OAuth 2.0 token for the current user.
psuebOAuthToken :: Lens' ProjectsSetUsageExportBucket' (Maybe OAuthToken)
psuebOAuthToken
  = lens _psuebOAuthToken
      (\ s a -> s{_psuebOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
psuebFields :: Lens' ProjectsSetUsageExportBucket' (Maybe Text)
psuebFields
  = lens _psuebFields (\ s a -> s{_psuebFields = a})

instance GoogleAuth ProjectsSetUsageExportBucket'
         where
        authKey = psuebKey . _Just
        authToken = psuebOAuthToken . _Just

instance GoogleRequest ProjectsSetUsageExportBucket'
         where
        type Rs ProjectsSetUsageExportBucket' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u
          ProjectsSetUsageExportBucket'{..}
          = go _psuebProject _psuebQuotaUser
              (Just _psuebPrettyPrint)
              _psuebUserIP
              _psuebFields
              _psuebKey
              _psuebOAuthToken
              (Just AltJSON)
              _psuebPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsSetUsageExportBucketResource)
                      r
                      u
