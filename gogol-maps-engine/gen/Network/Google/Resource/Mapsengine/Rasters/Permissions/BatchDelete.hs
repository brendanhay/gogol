{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Rasters.Permissions.BatchDelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove permission entries from an already existing asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineRastersPermissionsBatchDelete@.
module Mapsengine.Rasters.Permissions.BatchDelete
    (
    -- * REST Resource
      RastersPermissionsBatchDeleteAPI

    -- * Creating a Request
    , rastersPermissionsBatchDelete
    , RastersPermissionsBatchDelete

    -- * Request Lenses
    , rpbdQuotaUser
    , rpbdPrettyPrint
    , rpbdUserIp
    , rpbdKey
    , rpbdId
    , rpbdOauthToken
    , rpbdFields
    , rpbdAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineRastersPermissionsBatchDelete@ which the
-- 'RastersPermissionsBatchDelete' request conforms to.
type RastersPermissionsBatchDeleteAPI =
     "rasters" :>
       Capture "id" Text :>
         "permissions" :>
           "batchDelete" :>
             Post '[JSON] PermissionsBatchDeleteResponse

-- | Remove permission entries from an already existing asset.
--
-- /See:/ 'rastersPermissionsBatchDelete' smart constructor.
data RastersPermissionsBatchDelete = RastersPermissionsBatchDelete
    { _rpbdQuotaUser   :: !(Maybe Text)
    , _rpbdPrettyPrint :: !Bool
    , _rpbdUserIp      :: !(Maybe Text)
    , _rpbdKey         :: !(Maybe Text)
    , _rpbdId          :: !Text
    , _rpbdOauthToken  :: !(Maybe Text)
    , _rpbdFields      :: !(Maybe Text)
    , _rpbdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersPermissionsBatchDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpbdQuotaUser'
--
-- * 'rpbdPrettyPrint'
--
-- * 'rpbdUserIp'
--
-- * 'rpbdKey'
--
-- * 'rpbdId'
--
-- * 'rpbdOauthToken'
--
-- * 'rpbdFields'
--
-- * 'rpbdAlt'
rastersPermissionsBatchDelete
    :: Text -- ^ 'id'
    -> RastersPermissionsBatchDelete
rastersPermissionsBatchDelete pRpbdId_ =
    RastersPermissionsBatchDelete
    { _rpbdQuotaUser = Nothing
    , _rpbdPrettyPrint = True
    , _rpbdUserIp = Nothing
    , _rpbdKey = Nothing
    , _rpbdId = pRpbdId_
    , _rpbdOauthToken = Nothing
    , _rpbdFields = Nothing
    , _rpbdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpbdQuotaUser :: Lens' RastersPermissionsBatchDelete' (Maybe Text)
rpbdQuotaUser
  = lens _rpbdQuotaUser
      (\ s a -> s{_rpbdQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpbdPrettyPrint :: Lens' RastersPermissionsBatchDelete' Bool
rpbdPrettyPrint
  = lens _rpbdPrettyPrint
      (\ s a -> s{_rpbdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpbdUserIp :: Lens' RastersPermissionsBatchDelete' (Maybe Text)
rpbdUserIp
  = lens _rpbdUserIp (\ s a -> s{_rpbdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpbdKey :: Lens' RastersPermissionsBatchDelete' (Maybe Text)
rpbdKey = lens _rpbdKey (\ s a -> s{_rpbdKey = a})

-- | The ID of the asset from which permissions will be removed.
rpbdId :: Lens' RastersPermissionsBatchDelete' Text
rpbdId = lens _rpbdId (\ s a -> s{_rpbdId = a})

-- | OAuth 2.0 token for the current user.
rpbdOauthToken :: Lens' RastersPermissionsBatchDelete' (Maybe Text)
rpbdOauthToken
  = lens _rpbdOauthToken
      (\ s a -> s{_rpbdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpbdFields :: Lens' RastersPermissionsBatchDelete' (Maybe Text)
rpbdFields
  = lens _rpbdFields (\ s a -> s{_rpbdFields = a})

-- | Data format for the response.
rpbdAlt :: Lens' RastersPermissionsBatchDelete' Text
rpbdAlt = lens _rpbdAlt (\ s a -> s{_rpbdAlt = a})

instance GoogleRequest RastersPermissionsBatchDelete'
         where
        type Rs RastersPermissionsBatchDelete' =
             PermissionsBatchDeleteResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u
          RastersPermissionsBatchDelete{..}
          = go _rpbdQuotaUser _rpbdPrettyPrint _rpbdUserIp
              _rpbdKey
              _rpbdId
              _rpbdOauthToken
              _rpbdFields
              _rpbdAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RastersPermissionsBatchDeleteAPI)
                      r
                      u
