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
-- Module      : Network.Google.Resource.Directory.Schemas.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve schema
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectorySchemasGet@.
module Network.Google.Resource.Directory.Schemas.Get
    (
    -- * REST Resource
      SchemasGetResource

    -- * Creating a Request
    , schemasGet'
    , SchemasGet'

    -- * Request Lenses
    , sgQuotaUser
    , sgPrettyPrint
    , sgUserIP
    , sgCustomerId
    , sgKey
    , sgOAuthToken
    , sgSchemaKey
    , sgFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectorySchemasGet@ which the
-- 'SchemasGet'' request conforms to.
type SchemasGetResource =
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
                         QueryParam "alt" AltJSON :> Get '[JSON] Schema

-- | Retrieve schema
--
-- /See:/ 'schemasGet'' smart constructor.
data SchemasGet' = SchemasGet'
    { _sgQuotaUser   :: !(Maybe Text)
    , _sgPrettyPrint :: !Bool
    , _sgUserIP      :: !(Maybe Text)
    , _sgCustomerId  :: !Text
    , _sgKey         :: !(Maybe AuthKey)
    , _sgOAuthToken  :: !(Maybe OAuthToken)
    , _sgSchemaKey   :: !Text
    , _sgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SchemasGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgQuotaUser'
--
-- * 'sgPrettyPrint'
--
-- * 'sgUserIP'
--
-- * 'sgCustomerId'
--
-- * 'sgKey'
--
-- * 'sgOAuthToken'
--
-- * 'sgSchemaKey'
--
-- * 'sgFields'
schemasGet'
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'schemaKey'
    -> SchemasGet'
schemasGet' pSgCustomerId_ pSgSchemaKey_ =
    SchemasGet'
    { _sgQuotaUser = Nothing
    , _sgPrettyPrint = True
    , _sgUserIP = Nothing
    , _sgCustomerId = pSgCustomerId_
    , _sgKey = Nothing
    , _sgOAuthToken = Nothing
    , _sgSchemaKey = pSgSchemaKey_
    , _sgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sgQuotaUser :: Lens' SchemasGet' (Maybe Text)
sgQuotaUser
  = lens _sgQuotaUser (\ s a -> s{_sgQuotaUser = a})

-- | Returns response with indentations and line breaks.
sgPrettyPrint :: Lens' SchemasGet' Bool
sgPrettyPrint
  = lens _sgPrettyPrint
      (\ s a -> s{_sgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sgUserIP :: Lens' SchemasGet' (Maybe Text)
sgUserIP = lens _sgUserIP (\ s a -> s{_sgUserIP = a})

-- | Immutable id of the Google Apps account
sgCustomerId :: Lens' SchemasGet' Text
sgCustomerId
  = lens _sgCustomerId (\ s a -> s{_sgCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sgKey :: Lens' SchemasGet' (Maybe AuthKey)
sgKey = lens _sgKey (\ s a -> s{_sgKey = a})

-- | OAuth 2.0 token for the current user.
sgOAuthToken :: Lens' SchemasGet' (Maybe OAuthToken)
sgOAuthToken
  = lens _sgOAuthToken (\ s a -> s{_sgOAuthToken = a})

-- | Name or immutable Id of the schema
sgSchemaKey :: Lens' SchemasGet' Text
sgSchemaKey
  = lens _sgSchemaKey (\ s a -> s{_sgSchemaKey = a})

-- | Selector specifying which fields to include in a partial response.
sgFields :: Lens' SchemasGet' (Maybe Text)
sgFields = lens _sgFields (\ s a -> s{_sgFields = a})

instance GoogleAuth SchemasGet' where
        authKey = sgKey . _Just
        authToken = sgOAuthToken . _Just

instance GoogleRequest SchemasGet' where
        type Rs SchemasGet' = Schema
        request = requestWith directoryRequest
        requestWith rq SchemasGet'{..}
          = go _sgCustomerId _sgSchemaKey _sgQuotaUser
              (Just _sgPrettyPrint)
              _sgUserIP
              _sgFields
              _sgKey
              _sgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy SchemasGetResource) rq
