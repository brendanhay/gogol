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
-- Module      : Network.Google.Resource.Directory.Schemas.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update schema. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectorySchemasPatch@.
module Network.Google.Resource.Directory.Schemas.Patch
    (
    -- * REST Resource
      SchemasPatchResource

    -- * Creating a Request
    , schemasPatch'
    , SchemasPatch'

    -- * Request Lenses
    , spQuotaUser
    , spPrettyPrint
    , spUserIP
    , spCustomerId
    , spSchema
    , spKey
    , spOAuthToken
    , spSchemaKey
    , spFields
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectorySchemasPatch@ which the
-- 'SchemasPatch'' request conforms to.
type SchemasPatchResource =
     "customer" :>
       Capture "customerId" Text :>
         "schemas" :>
           Capture "schemaKey" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Schema :> Patch '[JSON] Schema

-- | Update schema. This method supports patch semantics.
--
-- /See:/ 'schemasPatch'' smart constructor.
data SchemasPatch' = SchemasPatch'
    { _spQuotaUser   :: !(Maybe Text)
    , _spPrettyPrint :: !Bool
    , _spUserIP      :: !(Maybe Text)
    , _spCustomerId  :: !Text
    , _spSchema      :: !Schema
    , _spKey         :: !(Maybe Key)
    , _spOAuthToken  :: !(Maybe OAuthToken)
    , _spSchemaKey   :: !Text
    , _spFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SchemasPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spQuotaUser'
--
-- * 'spPrettyPrint'
--
-- * 'spUserIP'
--
-- * 'spCustomerId'
--
-- * 'spSchema'
--
-- * 'spKey'
--
-- * 'spOAuthToken'
--
-- * 'spSchemaKey'
--
-- * 'spFields'
schemasPatch'
    :: Text -- ^ 'customerId'
    -> Schema -- ^ 'Schema'
    -> Text -- ^ 'schemaKey'
    -> SchemasPatch'
schemasPatch' pSpCustomerId_ pSpSchema_ pSpSchemaKey_ =
    SchemasPatch'
    { _spQuotaUser = Nothing
    , _spPrettyPrint = True
    , _spUserIP = Nothing
    , _spCustomerId = pSpCustomerId_
    , _spSchema = pSpSchema_
    , _spKey = Nothing
    , _spOAuthToken = Nothing
    , _spSchemaKey = pSpSchemaKey_
    , _spFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
spQuotaUser :: Lens' SchemasPatch' (Maybe Text)
spQuotaUser
  = lens _spQuotaUser (\ s a -> s{_spQuotaUser = a})

-- | Returns response with indentations and line breaks.
spPrettyPrint :: Lens' SchemasPatch' Bool
spPrettyPrint
  = lens _spPrettyPrint
      (\ s a -> s{_spPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
spUserIP :: Lens' SchemasPatch' (Maybe Text)
spUserIP = lens _spUserIP (\ s a -> s{_spUserIP = a})

-- | Immutable id of the Google Apps account
spCustomerId :: Lens' SchemasPatch' Text
spCustomerId
  = lens _spCustomerId (\ s a -> s{_spCustomerId = a})

-- | Multipart request metadata.
spSchema :: Lens' SchemasPatch' Schema
spSchema = lens _spSchema (\ s a -> s{_spSchema = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
spKey :: Lens' SchemasPatch' (Maybe Key)
spKey = lens _spKey (\ s a -> s{_spKey = a})

-- | OAuth 2.0 token for the current user.
spOAuthToken :: Lens' SchemasPatch' (Maybe OAuthToken)
spOAuthToken
  = lens _spOAuthToken (\ s a -> s{_spOAuthToken = a})

-- | Name or immutable Id of the schema.
spSchemaKey :: Lens' SchemasPatch' Text
spSchemaKey
  = lens _spSchemaKey (\ s a -> s{_spSchemaKey = a})

-- | Selector specifying which fields to include in a partial response.
spFields :: Lens' SchemasPatch' (Maybe Text)
spFields = lens _spFields (\ s a -> s{_spFields = a})

instance GoogleAuth SchemasPatch' where
        authKey = spKey . _Just
        authToken = spOAuthToken . _Just

instance GoogleRequest SchemasPatch' where
        type Rs SchemasPatch' = Schema
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u SchemasPatch'{..}
          = go _spQuotaUser (Just _spPrettyPrint) _spUserIP
              _spCustomerId
              _spKey
              _spOAuthToken
              _spSchemaKey
              _spFields
              (Just AltJSON)
              _spSchema
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SchemasPatchResource)
                      r
                      u
