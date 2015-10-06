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
-- Module      : Network.Google.Resource.Compute.Projects.SetCommonInstanceMetadata
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets metadata common to all instances within the specified project using
-- the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeProjectsSetCommonInstanceMetadata@.
module Network.Google.Resource.Compute.Projects.SetCommonInstanceMetadata
    (
    -- * REST Resource
      ProjectsSetCommonInstanceMetadataResource

    -- * Creating a Request
    , projectsSetCommonInstanceMetadata'
    , ProjectsSetCommonInstanceMetadata'

    -- * Request Lenses
    , pscimQuotaUser
    , pscimPrettyPrint
    , pscimProject
    , pscimUserIP
    , pscimPayload
    , pscimKey
    , pscimOAuthToken
    , pscimFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeProjectsSetCommonInstanceMetadata@ which the
-- 'ProjectsSetCommonInstanceMetadata'' request conforms to.
type ProjectsSetCommonInstanceMetadataResource =
     Capture "project" Text :>
       "setCommonInstanceMetadata" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Metadata :> Post '[JSON] Operation

-- | Sets metadata common to all instances within the specified project using
-- the data included in the request.
--
-- /See:/ 'projectsSetCommonInstanceMetadata'' smart constructor.
data ProjectsSetCommonInstanceMetadata' = ProjectsSetCommonInstanceMetadata'
    { _pscimQuotaUser   :: !(Maybe Text)
    , _pscimPrettyPrint :: !Bool
    , _pscimProject     :: !Text
    , _pscimUserIP      :: !(Maybe Text)
    , _pscimPayload     :: !Metadata
    , _pscimKey         :: !(Maybe AuthKey)
    , _pscimOAuthToken  :: !(Maybe OAuthToken)
    , _pscimFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsSetCommonInstanceMetadata'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pscimQuotaUser'
--
-- * 'pscimPrettyPrint'
--
-- * 'pscimProject'
--
-- * 'pscimUserIP'
--
-- * 'pscimPayload'
--
-- * 'pscimKey'
--
-- * 'pscimOAuthToken'
--
-- * 'pscimFields'
projectsSetCommonInstanceMetadata'
    :: Text -- ^ 'project'
    -> Metadata -- ^ 'payload'
    -> ProjectsSetCommonInstanceMetadata'
projectsSetCommonInstanceMetadata' pPscimProject_ pPscimPayload_ =
    ProjectsSetCommonInstanceMetadata'
    { _pscimQuotaUser = Nothing
    , _pscimPrettyPrint = True
    , _pscimProject = pPscimProject_
    , _pscimUserIP = Nothing
    , _pscimPayload = pPscimPayload_
    , _pscimKey = Nothing
    , _pscimOAuthToken = Nothing
    , _pscimFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pscimQuotaUser :: Lens' ProjectsSetCommonInstanceMetadata' (Maybe Text)
pscimQuotaUser
  = lens _pscimQuotaUser
      (\ s a -> s{_pscimQuotaUser = a})

-- | Returns response with indentations and line breaks.
pscimPrettyPrint :: Lens' ProjectsSetCommonInstanceMetadata' Bool
pscimPrettyPrint
  = lens _pscimPrettyPrint
      (\ s a -> s{_pscimPrettyPrint = a})

-- | Project ID for this request.
pscimProject :: Lens' ProjectsSetCommonInstanceMetadata' Text
pscimProject
  = lens _pscimProject (\ s a -> s{_pscimProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pscimUserIP :: Lens' ProjectsSetCommonInstanceMetadata' (Maybe Text)
pscimUserIP
  = lens _pscimUserIP (\ s a -> s{_pscimUserIP = a})

-- | Multipart request metadata.
pscimPayload :: Lens' ProjectsSetCommonInstanceMetadata' Metadata
pscimPayload
  = lens _pscimPayload (\ s a -> s{_pscimPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pscimKey :: Lens' ProjectsSetCommonInstanceMetadata' (Maybe AuthKey)
pscimKey = lens _pscimKey (\ s a -> s{_pscimKey = a})

-- | OAuth 2.0 token for the current user.
pscimOAuthToken :: Lens' ProjectsSetCommonInstanceMetadata' (Maybe OAuthToken)
pscimOAuthToken
  = lens _pscimOAuthToken
      (\ s a -> s{_pscimOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pscimFields :: Lens' ProjectsSetCommonInstanceMetadata' (Maybe Text)
pscimFields
  = lens _pscimFields (\ s a -> s{_pscimFields = a})

instance GoogleAuth
         ProjectsSetCommonInstanceMetadata' where
        _AuthKey = pscimKey . _Just
        _AuthToken = pscimOAuthToken . _Just

instance GoogleRequest
         ProjectsSetCommonInstanceMetadata' where
        type Rs ProjectsSetCommonInstanceMetadata' =
             Operation
        request = requestWith computeRequest
        requestWith rq ProjectsSetCommonInstanceMetadata'{..}
          = go _pscimProject _pscimQuotaUser
              (Just _pscimPrettyPrint)
              _pscimUserIP
              _pscimFields
              _pscimKey
              _pscimOAuthToken
              (Just AltJSON)
              _pscimPayload
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy ProjectsSetCommonInstanceMetadataResource)
                      rq
