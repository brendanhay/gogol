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
-- Module      : Network.Google.Resource.Mapsengine.Tables.Upload
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a placeholder table asset to which table files can be uploaded.
-- Once the placeholder has been created, files are uploaded to the
-- https:\/\/www.googleapis.com\/upload\/mapsengine\/v1\/tables\/table_id\/files
-- endpoint. See Table Upload in the Developer\'s Guide or Table.files:
-- insert in the reference documentation for more information.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineTablesUpload@.
module Network.Google.Resource.Mapsengine.Tables.Upload
    (
    -- * REST Resource
      TablesUploadResource

    -- * Creating a Request
    , tablesUpload'
    , TablesUpload'

    -- * Request Lenses
    , tuQuotaUser
    , tuPrettyPrint
    , tuUserIp
    , tuKey
    , tuOauthToken
    , tuFields
    , tuAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineTablesUpload@ which the
-- 'TablesUpload'' request conforms to.
type TablesUploadResource =
     "tables" :>
       "upload" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Post '[JSON] Table

-- | Create a placeholder table asset to which table files can be uploaded.
-- Once the placeholder has been created, files are uploaded to the
-- https:\/\/www.googleapis.com\/upload\/mapsengine\/v1\/tables\/table_id\/files
-- endpoint. See Table Upload in the Developer\'s Guide or Table.files:
-- insert in the reference documentation for more information.
--
-- /See:/ 'tablesUpload'' smart constructor.
data TablesUpload' = TablesUpload'
    { _tuQuotaUser   :: !(Maybe Text)
    , _tuPrettyPrint :: !Bool
    , _tuUserIp      :: !(Maybe Text)
    , _tuKey         :: !(Maybe Text)
    , _tuOauthToken  :: !(Maybe Text)
    , _tuFields      :: !(Maybe Text)
    , _tuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesUpload'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tuQuotaUser'
--
-- * 'tuPrettyPrint'
--
-- * 'tuUserIp'
--
-- * 'tuKey'
--
-- * 'tuOauthToken'
--
-- * 'tuFields'
--
-- * 'tuAlt'
tablesUpload'
    :: TablesUpload'
tablesUpload' =
    TablesUpload'
    { _tuQuotaUser = Nothing
    , _tuPrettyPrint = True
    , _tuUserIp = Nothing
    , _tuKey = Nothing
    , _tuOauthToken = Nothing
    , _tuFields = Nothing
    , _tuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tuQuotaUser :: Lens' TablesUpload' (Maybe Text)
tuQuotaUser
  = lens _tuQuotaUser (\ s a -> s{_tuQuotaUser = a})

-- | Returns response with indentations and line breaks.
tuPrettyPrint :: Lens' TablesUpload' Bool
tuPrettyPrint
  = lens _tuPrettyPrint
      (\ s a -> s{_tuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tuUserIp :: Lens' TablesUpload' (Maybe Text)
tuUserIp = lens _tuUserIp (\ s a -> s{_tuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tuKey :: Lens' TablesUpload' (Maybe Text)
tuKey = lens _tuKey (\ s a -> s{_tuKey = a})

-- | OAuth 2.0 token for the current user.
tuOauthToken :: Lens' TablesUpload' (Maybe Text)
tuOauthToken
  = lens _tuOauthToken (\ s a -> s{_tuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tuFields :: Lens' TablesUpload' (Maybe Text)
tuFields = lens _tuFields (\ s a -> s{_tuFields = a})

-- | Data format for the response.
tuAlt :: Lens' TablesUpload' Alt
tuAlt = lens _tuAlt (\ s a -> s{_tuAlt = a})

instance GoogleRequest TablesUpload' where
        type Rs TablesUpload' = Table
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u TablesUpload'{..}
          = go _tuQuotaUser (Just _tuPrettyPrint) _tuUserIp
              _tuKey
              _tuOauthToken
              _tuFields
              (Just _tuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesUploadResource)
                      r
                      u
