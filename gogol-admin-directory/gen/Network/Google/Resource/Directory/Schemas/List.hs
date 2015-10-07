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
-- Module      : Network.Google.Resource.Directory.Schemas.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieve all schemas for a customer
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectorySchemasList@.
module Network.Google.Resource.Directory.Schemas.List
    (
    -- * REST Resource
      SchemasListResource

    -- * Creating a Request
    , schemasList'
    , SchemasList'

    -- * Request Lenses
    , slQuotaUser
    , slPrettyPrint
    , slUserIP
    , slCustomerId
    , slKey
    , slOAuthToken
    , slFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectorySchemasList@ method which the
-- 'SchemasList'' request conforms to.
type SchemasListResource =
     "customer" :>
       Capture "customerId" Text :>
         "schemas" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Schemas

-- | Retrieve all schemas for a customer
--
-- /See:/ 'schemasList'' smart constructor.
data SchemasList' = SchemasList'
    { _slQuotaUser   :: !(Maybe Text)
    , _slPrettyPrint :: !Bool
    , _slUserIP      :: !(Maybe Text)
    , _slCustomerId  :: !Text
    , _slKey         :: !(Maybe AuthKey)
    , _slOAuthToken  :: !(Maybe OAuthToken)
    , _slFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SchemasList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slQuotaUser'
--
-- * 'slPrettyPrint'
--
-- * 'slUserIP'
--
-- * 'slCustomerId'
--
-- * 'slKey'
--
-- * 'slOAuthToken'
--
-- * 'slFields'
schemasList'
    :: Text -- ^ 'customerId'
    -> SchemasList'
schemasList' pSlCustomerId_ =
    SchemasList'
    { _slQuotaUser = Nothing
    , _slPrettyPrint = True
    , _slUserIP = Nothing
    , _slCustomerId = pSlCustomerId_
    , _slKey = Nothing
    , _slOAuthToken = Nothing
    , _slFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
slQuotaUser :: Lens' SchemasList' (Maybe Text)
slQuotaUser
  = lens _slQuotaUser (\ s a -> s{_slQuotaUser = a})

-- | Returns response with indentations and line breaks.
slPrettyPrint :: Lens' SchemasList' Bool
slPrettyPrint
  = lens _slPrettyPrint
      (\ s a -> s{_slPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
slUserIP :: Lens' SchemasList' (Maybe Text)
slUserIP = lens _slUserIP (\ s a -> s{_slUserIP = a})

-- | Immutable id of the Google Apps account
slCustomerId :: Lens' SchemasList' Text
slCustomerId
  = lens _slCustomerId (\ s a -> s{_slCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
slKey :: Lens' SchemasList' (Maybe AuthKey)
slKey = lens _slKey (\ s a -> s{_slKey = a})

-- | OAuth 2.0 token for the current user.
slOAuthToken :: Lens' SchemasList' (Maybe OAuthToken)
slOAuthToken
  = lens _slOAuthToken (\ s a -> s{_slOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
slFields :: Lens' SchemasList' (Maybe Text)
slFields = lens _slFields (\ s a -> s{_slFields = a})

instance GoogleAuth SchemasList' where
        _AuthKey = slKey . _Just
        _AuthToken = slOAuthToken . _Just

instance GoogleRequest SchemasList' where
        type Rs SchemasList' = Schemas
        request = requestWith directoryRequest
        requestWith rq SchemasList'{..}
          = go _slCustomerId _slQuotaUser (Just _slPrettyPrint)
              _slUserIP
              _slFields
              _slKey
              _slOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy SchemasListResource) rq
