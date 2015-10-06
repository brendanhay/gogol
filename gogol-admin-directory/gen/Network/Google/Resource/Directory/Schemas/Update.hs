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
-- Module      : Network.Google.Resource.Directory.Schemas.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update schema
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectorySchemasUpdate@.
module Network.Google.Resource.Directory.Schemas.Update
    (
    -- * REST Resource
      SchemasUpdateResource

    -- * Creating a Request
    , schemasUpdate'
    , SchemasUpdate'

    -- * Request Lenses
    , suQuotaUser
    , suPrettyPrint
    , suUserIP
    , suPayload
    , suCustomerId
    , suKey
    , suOAuthToken
    , suSchemaKey
    , suFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectorySchemasUpdate@ which the
-- 'SchemasUpdate'' request conforms to.
type SchemasUpdateResource =
     "customer" :>
       Capture "customerId" Text :>
         "schemas" :>
           Capture "schemaKey" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Schema :> Put '[JSON] Schema

-- | Update schema
--
-- /See:/ 'schemasUpdate'' smart constructor.
data SchemasUpdate' = SchemasUpdate'
    { _suQuotaUser   :: !(Maybe Text)
    , _suPrettyPrint :: !Bool
    , _suUserIP      :: !(Maybe Text)
    , _suPayload     :: !Schema
    , _suCustomerId  :: !Text
    , _suKey         :: !(Maybe AuthKey)
    , _suOAuthToken  :: !(Maybe OAuthToken)
    , _suSchemaKey   :: !Text
    , _suFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SchemasUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suQuotaUser'
--
-- * 'suPrettyPrint'
--
-- * 'suUserIP'
--
-- * 'suPayload'
--
-- * 'suCustomerId'
--
-- * 'suKey'
--
-- * 'suOAuthToken'
--
-- * 'suSchemaKey'
--
-- * 'suFields'
schemasUpdate'
    :: Schema -- ^ 'payload'
    -> Text -- ^ 'customerId'
    -> Text -- ^ 'schemaKey'
    -> SchemasUpdate'
schemasUpdate' pSuPayload_ pSuCustomerId_ pSuSchemaKey_ =
    SchemasUpdate'
    { _suQuotaUser = Nothing
    , _suPrettyPrint = True
    , _suUserIP = Nothing
    , _suPayload = pSuPayload_
    , _suCustomerId = pSuCustomerId_
    , _suKey = Nothing
    , _suOAuthToken = Nothing
    , _suSchemaKey = pSuSchemaKey_
    , _suFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
suQuotaUser :: Lens' SchemasUpdate' (Maybe Text)
suQuotaUser
  = lens _suQuotaUser (\ s a -> s{_suQuotaUser = a})

-- | Returns response with indentations and line breaks.
suPrettyPrint :: Lens' SchemasUpdate' Bool
suPrettyPrint
  = lens _suPrettyPrint
      (\ s a -> s{_suPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
suUserIP :: Lens' SchemasUpdate' (Maybe Text)
suUserIP = lens _suUserIP (\ s a -> s{_suUserIP = a})

-- | Multipart request metadata.
suPayload :: Lens' SchemasUpdate' Schema
suPayload
  = lens _suPayload (\ s a -> s{_suPayload = a})

-- | Immutable id of the Google Apps account
suCustomerId :: Lens' SchemasUpdate' Text
suCustomerId
  = lens _suCustomerId (\ s a -> s{_suCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
suKey :: Lens' SchemasUpdate' (Maybe AuthKey)
suKey = lens _suKey (\ s a -> s{_suKey = a})

-- | OAuth 2.0 token for the current user.
suOAuthToken :: Lens' SchemasUpdate' (Maybe OAuthToken)
suOAuthToken
  = lens _suOAuthToken (\ s a -> s{_suOAuthToken = a})

-- | Name or immutable Id of the schema.
suSchemaKey :: Lens' SchemasUpdate' Text
suSchemaKey
  = lens _suSchemaKey (\ s a -> s{_suSchemaKey = a})

-- | Selector specifying which fields to include in a partial response.
suFields :: Lens' SchemasUpdate' (Maybe Text)
suFields = lens _suFields (\ s a -> s{_suFields = a})

instance GoogleAuth SchemasUpdate' where
        authKey = suKey . _Just
        authToken = suOAuthToken . _Just

instance GoogleRequest SchemasUpdate' where
        type Rs SchemasUpdate' = Schema
        request = requestWith directoryRequest
        requestWith rq SchemasUpdate'{..}
          = go _suCustomerId _suSchemaKey _suQuotaUser
              (Just _suPrettyPrint)
              _suUserIP
              _suFields
              _suKey
              _suOAuthToken
              (Just AltJSON)
              _suPayload
          where go
                  = clientBuild (Proxy :: Proxy SchemasUpdateResource)
                      rq
