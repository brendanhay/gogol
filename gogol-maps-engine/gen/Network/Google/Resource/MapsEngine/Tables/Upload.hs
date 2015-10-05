{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.MapsEngine.Tables.Upload
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
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineTablesUpload@.
module Network.Google.Resource.MapsEngine.Tables.Upload
    (
    -- * REST Resource
      TablesUploadResource

    -- * Creating a Request
    , tablesUpload'
    , TablesUpload'

    -- * Request Lenses
    , tuQuotaUser
    , tuPrettyPrint
    , tuUserIP
    , tuPayload
    , tuKey
    , tuOAuthToken
    , tuFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineTablesUpload@ which the
-- 'TablesUpload'' request conforms to.
type TablesUploadResource =
     "tables" :>
       "upload" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Table :> Post '[JSON] Table

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
    , _tuUserIP      :: !(Maybe Text)
    , _tuPayload     :: !Table
    , _tuKey         :: !(Maybe Key)
    , _tuOAuthToken  :: !(Maybe OAuthToken)
    , _tuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesUpload'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tuQuotaUser'
--
-- * 'tuPrettyPrint'
--
-- * 'tuUserIP'
--
-- * 'tuPayload'
--
-- * 'tuKey'
--
-- * 'tuOAuthToken'
--
-- * 'tuFields'
tablesUpload'
    :: Table -- ^ 'payload'
    -> TablesUpload'
tablesUpload' pTuPayload_ =
    TablesUpload'
    { _tuQuotaUser = Nothing
    , _tuPrettyPrint = True
    , _tuUserIP = Nothing
    , _tuPayload = pTuPayload_
    , _tuKey = Nothing
    , _tuOAuthToken = Nothing
    , _tuFields = Nothing
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
tuUserIP :: Lens' TablesUpload' (Maybe Text)
tuUserIP = lens _tuUserIP (\ s a -> s{_tuUserIP = a})

-- | Multipart request metadata.
tuPayload :: Lens' TablesUpload' Table
tuPayload
  = lens _tuPayload (\ s a -> s{_tuPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tuKey :: Lens' TablesUpload' (Maybe Key)
tuKey = lens _tuKey (\ s a -> s{_tuKey = a})

-- | OAuth 2.0 token for the current user.
tuOAuthToken :: Lens' TablesUpload' (Maybe OAuthToken)
tuOAuthToken
  = lens _tuOAuthToken (\ s a -> s{_tuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tuFields :: Lens' TablesUpload' (Maybe Text)
tuFields = lens _tuFields (\ s a -> s{_tuFields = a})

instance GoogleAuth TablesUpload' where
        authKey = tuKey . _Just
        authToken = tuOAuthToken . _Just

instance GoogleRequest TablesUpload' where
        type Rs TablesUpload' = Table
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u TablesUpload'{..}
          = go _tuQuotaUser (Just _tuPrettyPrint) _tuUserIP
              _tuFields
              _tuKey
              _tuOAuthToken
              (Just AltJSON)
              _tuPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesUploadResource)
                      r
                      u
