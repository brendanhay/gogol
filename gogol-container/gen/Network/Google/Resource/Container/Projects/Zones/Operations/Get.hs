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
-- Module      : Network.Google.Resource.Container.Projects.Zones.Operations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the specified operation.
--
-- /See:/ <https://cloud.google.com/container-engine/docs/v1beta1/ Google Container Engine API Reference> for @ContainerProjectsZonesOperationsGet@.
module Network.Google.Resource.Container.Projects.Zones.Operations.Get
    (
    -- * REST Resource
      ProjectsZonesOperationsGetResource

    -- * Creating a Request
    , projectsZonesOperationsGet'
    , ProjectsZonesOperationsGet'

    -- * Request Lenses
    , pzogQuotaUser
    , pzogPrettyPrint
    , pzogUserIP
    , pzogZoneId
    , pzogKey
    , pzogProjectId
    , pzogOperationId
    , pzogOAuthToken
    , pzogFields
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude

-- | A resource alias for @ContainerProjectsZonesOperationsGet@ method which the
-- 'ProjectsZonesOperationsGet'' request conforms to.
type ProjectsZonesOperationsGetResource =
     Capture "projectId" Text :>
       "zones" :>
         Capture "zoneId" Text :>
           "operations" :>
             Capture "operationId" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Gets the specified operation.
--
-- /See:/ 'projectsZonesOperationsGet'' smart constructor.
data ProjectsZonesOperationsGet' = ProjectsZonesOperationsGet'
    { _pzogQuotaUser   :: !(Maybe Text)
    , _pzogPrettyPrint :: !Bool
    , _pzogUserIP      :: !(Maybe Text)
    , _pzogZoneId      :: !Text
    , _pzogKey         :: !(Maybe AuthKey)
    , _pzogProjectId   :: !Text
    , _pzogOperationId :: !Text
    , _pzogOAuthToken  :: !(Maybe OAuthToken)
    , _pzogFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsZonesOperationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pzogQuotaUser'
--
-- * 'pzogPrettyPrint'
--
-- * 'pzogUserIP'
--
-- * 'pzogZoneId'
--
-- * 'pzogKey'
--
-- * 'pzogProjectId'
--
-- * 'pzogOperationId'
--
-- * 'pzogOAuthToken'
--
-- * 'pzogFields'
projectsZonesOperationsGet'
    :: Text -- ^ 'zoneId'
    -> Text -- ^ 'projectId'
    -> Text -- ^ 'operationId'
    -> ProjectsZonesOperationsGet'
projectsZonesOperationsGet' pPzogZoneId_ pPzogProjectId_ pPzogOperationId_ =
    ProjectsZonesOperationsGet'
    { _pzogQuotaUser = Nothing
    , _pzogPrettyPrint = True
    , _pzogUserIP = Nothing
    , _pzogZoneId = pPzogZoneId_
    , _pzogKey = Nothing
    , _pzogProjectId = pPzogProjectId_
    , _pzogOperationId = pPzogOperationId_
    , _pzogOAuthToken = Nothing
    , _pzogFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pzogQuotaUser :: Lens' ProjectsZonesOperationsGet' (Maybe Text)
pzogQuotaUser
  = lens _pzogQuotaUser
      (\ s a -> s{_pzogQuotaUser = a})

-- | Returns response with indentations and line breaks.
pzogPrettyPrint :: Lens' ProjectsZonesOperationsGet' Bool
pzogPrettyPrint
  = lens _pzogPrettyPrint
      (\ s a -> s{_pzogPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pzogUserIP :: Lens' ProjectsZonesOperationsGet' (Maybe Text)
pzogUserIP
  = lens _pzogUserIP (\ s a -> s{_pzogUserIP = a})

-- | The name of the Google Compute Engine zone in which the operation
-- resides. This is always the same zone as the cluster with which the
-- operation is associated.
pzogZoneId :: Lens' ProjectsZonesOperationsGet' Text
pzogZoneId
  = lens _pzogZoneId (\ s a -> s{_pzogZoneId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pzogKey :: Lens' ProjectsZonesOperationsGet' (Maybe AuthKey)
pzogKey = lens _pzogKey (\ s a -> s{_pzogKey = a})

-- | The Google Developers Console project ID or project number.
pzogProjectId :: Lens' ProjectsZonesOperationsGet' Text
pzogProjectId
  = lens _pzogProjectId
      (\ s a -> s{_pzogProjectId = a})

-- | The server-assigned name of the operation.
pzogOperationId :: Lens' ProjectsZonesOperationsGet' Text
pzogOperationId
  = lens _pzogOperationId
      (\ s a -> s{_pzogOperationId = a})

-- | OAuth 2.0 token for the current user.
pzogOAuthToken :: Lens' ProjectsZonesOperationsGet' (Maybe OAuthToken)
pzogOAuthToken
  = lens _pzogOAuthToken
      (\ s a -> s{_pzogOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pzogFields :: Lens' ProjectsZonesOperationsGet' (Maybe Text)
pzogFields
  = lens _pzogFields (\ s a -> s{_pzogFields = a})

instance GoogleAuth ProjectsZonesOperationsGet' where
        _AuthKey = pzogKey . _Just
        _AuthToken = pzogOAuthToken . _Just

instance GoogleRequest ProjectsZonesOperationsGet'
         where
        type Rs ProjectsZonesOperationsGet' = Operation
        request = requestWith containerRequest
        requestWith rq ProjectsZonesOperationsGet'{..}
          = go _pzogProjectId _pzogZoneId _pzogOperationId
              _pzogQuotaUser
              (Just _pzogPrettyPrint)
              _pzogUserIP
              _pzogFields
              _pzogKey
              _pzogOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ProjectsZonesOperationsGetResource)
                      rq
