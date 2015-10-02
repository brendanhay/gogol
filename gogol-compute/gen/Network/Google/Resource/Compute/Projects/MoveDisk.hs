{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Projects.MoveDisk
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Moves a persistent disk from one zone to another.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeProjectsMoveDisk@.
module Network.Google.Resource.Compute.Projects.MoveDisk
    (
    -- * REST Resource
      ProjectsMoveDiskResource

    -- * Creating a Request
    , projectsMoveDisk'
    , ProjectsMoveDisk'

    -- * Request Lenses
    , pmdQuotaUser
    , pmdPrettyPrint
    , pmdProject
    , pmdDiskMoveRequest
    , pmdUserIP
    , pmdKey
    , pmdOAuthToken
    , pmdFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeProjectsMoveDisk@ which the
-- 'ProjectsMoveDisk'' request conforms to.
type ProjectsMoveDiskResource =
     Capture "project" Text :>
       "moveDisk" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] DiskMoveRequest :>
                         Post '[JSON] Operation

-- | Moves a persistent disk from one zone to another.
--
-- /See:/ 'projectsMoveDisk'' smart constructor.
data ProjectsMoveDisk' = ProjectsMoveDisk'
    { _pmdQuotaUser       :: !(Maybe Text)
    , _pmdPrettyPrint     :: !Bool
    , _pmdProject         :: !Text
    , _pmdDiskMoveRequest :: !DiskMoveRequest
    , _pmdUserIP          :: !(Maybe Text)
    , _pmdKey             :: !(Maybe Key)
    , _pmdOAuthToken      :: !(Maybe OAuthToken)
    , _pmdFields          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsMoveDisk'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmdQuotaUser'
--
-- * 'pmdPrettyPrint'
--
-- * 'pmdProject'
--
-- * 'pmdDiskMoveRequest'
--
-- * 'pmdUserIP'
--
-- * 'pmdKey'
--
-- * 'pmdOAuthToken'
--
-- * 'pmdFields'
projectsMoveDisk'
    :: Text -- ^ 'project'
    -> DiskMoveRequest -- ^ 'DiskMoveRequest'
    -> ProjectsMoveDisk'
projectsMoveDisk' pPmdProject_ pPmdDiskMoveRequest_ =
    ProjectsMoveDisk'
    { _pmdQuotaUser = Nothing
    , _pmdPrettyPrint = True
    , _pmdProject = pPmdProject_
    , _pmdDiskMoveRequest = pPmdDiskMoveRequest_
    , _pmdUserIP = Nothing
    , _pmdKey = Nothing
    , _pmdOAuthToken = Nothing
    , _pmdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pmdQuotaUser :: Lens' ProjectsMoveDisk' (Maybe Text)
pmdQuotaUser
  = lens _pmdQuotaUser (\ s a -> s{_pmdQuotaUser = a})

-- | Returns response with indentations and line breaks.
pmdPrettyPrint :: Lens' ProjectsMoveDisk' Bool
pmdPrettyPrint
  = lens _pmdPrettyPrint
      (\ s a -> s{_pmdPrettyPrint = a})

-- | Project ID for this request.
pmdProject :: Lens' ProjectsMoveDisk' Text
pmdProject
  = lens _pmdProject (\ s a -> s{_pmdProject = a})

-- | Multipart request metadata.
pmdDiskMoveRequest :: Lens' ProjectsMoveDisk' DiskMoveRequest
pmdDiskMoveRequest
  = lens _pmdDiskMoveRequest
      (\ s a -> s{_pmdDiskMoveRequest = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pmdUserIP :: Lens' ProjectsMoveDisk' (Maybe Text)
pmdUserIP
  = lens _pmdUserIP (\ s a -> s{_pmdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pmdKey :: Lens' ProjectsMoveDisk' (Maybe Key)
pmdKey = lens _pmdKey (\ s a -> s{_pmdKey = a})

-- | OAuth 2.0 token for the current user.
pmdOAuthToken :: Lens' ProjectsMoveDisk' (Maybe OAuthToken)
pmdOAuthToken
  = lens _pmdOAuthToken
      (\ s a -> s{_pmdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pmdFields :: Lens' ProjectsMoveDisk' (Maybe Text)
pmdFields
  = lens _pmdFields (\ s a -> s{_pmdFields = a})

instance GoogleAuth ProjectsMoveDisk' where
        authKey = pmdKey . _Just
        authToken = pmdOAuthToken . _Just

instance GoogleRequest ProjectsMoveDisk' where
        type Rs ProjectsMoveDisk' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ProjectsMoveDisk'{..}
          = go _pmdProject _pmdQuotaUser (Just _pmdPrettyPrint)
              _pmdUserIP
              _pmdFields
              _pmdKey
              _pmdOAuthToken
              (Just AltJSON)
              _pmdDiskMoveRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsMoveDiskResource)
                      r
                      u
