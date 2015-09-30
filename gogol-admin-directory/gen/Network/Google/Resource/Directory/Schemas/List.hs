{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Directory.Schemas.List
    (
    -- * REST Resource
      SchemasListAPI

    -- * Creating a Request
    , schemasList
    , SchemasList

    -- * Request Lenses
    , slQuotaUser
    , slPrettyPrint
    , slUserIp
    , slCustomerId
    , slKey
    , slOauthToken
    , slFields
    , slAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectorySchemasList@ which the
-- 'SchemasList' request conforms to.
type SchemasListAPI =
     "customer" :>
       Capture "customerId" Text :>
         "schemas" :> Get '[JSON] Schemas

-- | Retrieve all schemas for a customer
--
-- /See:/ 'schemasList' smart constructor.
data SchemasList = SchemasList
    { _slQuotaUser   :: !(Maybe Text)
    , _slPrettyPrint :: !Bool
    , _slUserIp      :: !(Maybe Text)
    , _slCustomerId  :: !Text
    , _slKey         :: !(Maybe Text)
    , _slOauthToken  :: !(Maybe Text)
    , _slFields      :: !(Maybe Text)
    , _slAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SchemasList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slQuotaUser'
--
-- * 'slPrettyPrint'
--
-- * 'slUserIp'
--
-- * 'slCustomerId'
--
-- * 'slKey'
--
-- * 'slOauthToken'
--
-- * 'slFields'
--
-- * 'slAlt'
schemasList
    :: Text -- ^ 'customerId'
    -> SchemasList
schemasList pSlCustomerId_ =
    SchemasList
    { _slQuotaUser = Nothing
    , _slPrettyPrint = True
    , _slUserIp = Nothing
    , _slCustomerId = pSlCustomerId_
    , _slKey = Nothing
    , _slOauthToken = Nothing
    , _slFields = Nothing
    , _slAlt = "json"
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
slUserIp :: Lens' SchemasList' (Maybe Text)
slUserIp = lens _slUserIp (\ s a -> s{_slUserIp = a})

-- | Immutable id of the Google Apps account
slCustomerId :: Lens' SchemasList' Text
slCustomerId
  = lens _slCustomerId (\ s a -> s{_slCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
slKey :: Lens' SchemasList' (Maybe Text)
slKey = lens _slKey (\ s a -> s{_slKey = a})

-- | OAuth 2.0 token for the current user.
slOauthToken :: Lens' SchemasList' (Maybe Text)
slOauthToken
  = lens _slOauthToken (\ s a -> s{_slOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
slFields :: Lens' SchemasList' (Maybe Text)
slFields = lens _slFields (\ s a -> s{_slFields = a})

-- | Data format for the response.
slAlt :: Lens' SchemasList' Text
slAlt = lens _slAlt (\ s a -> s{_slAlt = a})

instance GoogleRequest SchemasList' where
        type Rs SchemasList' = Schemas
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u SchemasList{..}
          = go _slQuotaUser _slPrettyPrint _slUserIp
              _slCustomerId
              _slKey
              _slOauthToken
              _slFields
              _slAlt
          where go
                  = clientWithRoute (Proxy :: Proxy SchemasListAPI) r u
