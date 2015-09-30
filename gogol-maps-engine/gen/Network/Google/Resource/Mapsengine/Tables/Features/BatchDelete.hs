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
-- Module      : Network.Google.Resource.Mapsengine.Tables.Features.BatchDelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete all features matching the given IDs.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineTablesFeaturesBatchDelete@.
module Network.Google.Resource.Mapsengine.Tables.Features.BatchDelete
    (
    -- * REST Resource
      TablesFeaturesBatchDeleteResource

    -- * Creating a Request
    , tablesFeaturesBatchDelete'
    , TablesFeaturesBatchDelete'

    -- * Request Lenses
    , tfbdQuotaUser
    , tfbdPrettyPrint
    , tfbdUserIp
    , tfbdKey
    , tfbdId
    , tfbdOauthToken
    , tfbdFields
    , tfbdAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineTablesFeaturesBatchDelete@ which the
-- 'TablesFeaturesBatchDelete'' request conforms to.
type TablesFeaturesBatchDeleteResource =
     "tables" :>
       Capture "id" Text :>
         "features" :>
           "batchDelete" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] ()

-- | Delete all features matching the given IDs.
--
-- /See:/ 'tablesFeaturesBatchDelete'' smart constructor.
data TablesFeaturesBatchDelete' = TablesFeaturesBatchDelete'
    { _tfbdQuotaUser   :: !(Maybe Text)
    , _tfbdPrettyPrint :: !Bool
    , _tfbdUserIp      :: !(Maybe Text)
    , _tfbdKey         :: !(Maybe Text)
    , _tfbdId          :: !Text
    , _tfbdOauthToken  :: !(Maybe Text)
    , _tfbdFields      :: !(Maybe Text)
    , _tfbdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesFeaturesBatchDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfbdQuotaUser'
--
-- * 'tfbdPrettyPrint'
--
-- * 'tfbdUserIp'
--
-- * 'tfbdKey'
--
-- * 'tfbdId'
--
-- * 'tfbdOauthToken'
--
-- * 'tfbdFields'
--
-- * 'tfbdAlt'
tablesFeaturesBatchDelete'
    :: Text -- ^ 'id'
    -> TablesFeaturesBatchDelete'
tablesFeaturesBatchDelete' pTfbdId_ =
    TablesFeaturesBatchDelete'
    { _tfbdQuotaUser = Nothing
    , _tfbdPrettyPrint = True
    , _tfbdUserIp = Nothing
    , _tfbdKey = Nothing
    , _tfbdId = pTfbdId_
    , _tfbdOauthToken = Nothing
    , _tfbdFields = Nothing
    , _tfbdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tfbdQuotaUser :: Lens' TablesFeaturesBatchDelete' (Maybe Text)
tfbdQuotaUser
  = lens _tfbdQuotaUser
      (\ s a -> s{_tfbdQuotaUser = a})

-- | Returns response with indentations and line breaks.
tfbdPrettyPrint :: Lens' TablesFeaturesBatchDelete' Bool
tfbdPrettyPrint
  = lens _tfbdPrettyPrint
      (\ s a -> s{_tfbdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tfbdUserIp :: Lens' TablesFeaturesBatchDelete' (Maybe Text)
tfbdUserIp
  = lens _tfbdUserIp (\ s a -> s{_tfbdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tfbdKey :: Lens' TablesFeaturesBatchDelete' (Maybe Text)
tfbdKey = lens _tfbdKey (\ s a -> s{_tfbdKey = a})

-- | The ID of the table that contains the features to be deleted.
tfbdId :: Lens' TablesFeaturesBatchDelete' Text
tfbdId = lens _tfbdId (\ s a -> s{_tfbdId = a})

-- | OAuth 2.0 token for the current user.
tfbdOauthToken :: Lens' TablesFeaturesBatchDelete' (Maybe Text)
tfbdOauthToken
  = lens _tfbdOauthToken
      (\ s a -> s{_tfbdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tfbdFields :: Lens' TablesFeaturesBatchDelete' (Maybe Text)
tfbdFields
  = lens _tfbdFields (\ s a -> s{_tfbdFields = a})

-- | Data format for the response.
tfbdAlt :: Lens' TablesFeaturesBatchDelete' Alt
tfbdAlt = lens _tfbdAlt (\ s a -> s{_tfbdAlt = a})

instance GoogleRequest TablesFeaturesBatchDelete'
         where
        type Rs TablesFeaturesBatchDelete' = ()
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u TablesFeaturesBatchDelete'{..}
          = go _tfbdQuotaUser (Just _tfbdPrettyPrint)
              _tfbdUserIp
              _tfbdKey
              _tfbdId
              _tfbdOauthToken
              _tfbdFields
              (Just _tfbdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesFeaturesBatchDeleteResource)
                      r
                      u
