{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module Directory.Schemas.Get
    (
    -- * REST Resource
      SchemasGetAPI

    -- * Creating a Request
    , schemasGet
    , SchemasGet

    -- * Request Lenses
    , sgQuotaUser
    , sgPrettyPrint
    , sgUserIp
    , sgCustomerId
    , sgKey
    , sgOauthToken
    , sgSchemaKey
    , sgFields
    , sgAlt
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectorySchemasGet@ which the
-- 'SchemasGet' request conforms to.
type SchemasGetAPI =
     "customer" :>
       Capture "customerId" Text :>
         "schemas" :>
           Capture "schemaKey" Text :> Get '[JSON] Schema

-- | Retrieve schema
--
-- /See:/ 'schemasGet' smart constructor.
data SchemasGet = SchemasGet
    { _sgQuotaUser   :: !(Maybe Text)
    , _sgPrettyPrint :: !Bool
    , _sgUserIp      :: !(Maybe Text)
    , _sgCustomerId  :: !Text
    , _sgKey         :: !(Maybe Text)
    , _sgOauthToken  :: !(Maybe Text)
    , _sgSchemaKey   :: !Text
    , _sgFields      :: !(Maybe Text)
    , _sgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SchemasGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgQuotaUser'
--
-- * 'sgPrettyPrint'
--
-- * 'sgUserIp'
--
-- * 'sgCustomerId'
--
-- * 'sgKey'
--
-- * 'sgOauthToken'
--
-- * 'sgSchemaKey'
--
-- * 'sgFields'
--
-- * 'sgAlt'
schemasGet
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'schemaKey'
    -> SchemasGet
schemasGet pSgCustomerId_ pSgSchemaKey_ =
    SchemasGet
    { _sgQuotaUser = Nothing
    , _sgPrettyPrint = True
    , _sgUserIp = Nothing
    , _sgCustomerId = pSgCustomerId_
    , _sgKey = Nothing
    , _sgOauthToken = Nothing
    , _sgSchemaKey = pSgSchemaKey_
    , _sgFields = Nothing
    , _sgAlt = "json"
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
sgUserIp :: Lens' SchemasGet' (Maybe Text)
sgUserIp = lens _sgUserIp (\ s a -> s{_sgUserIp = a})

-- | Immutable id of the Google Apps account
sgCustomerId :: Lens' SchemasGet' Text
sgCustomerId
  = lens _sgCustomerId (\ s a -> s{_sgCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sgKey :: Lens' SchemasGet' (Maybe Text)
sgKey = lens _sgKey (\ s a -> s{_sgKey = a})

-- | OAuth 2.0 token for the current user.
sgOauthToken :: Lens' SchemasGet' (Maybe Text)
sgOauthToken
  = lens _sgOauthToken (\ s a -> s{_sgOauthToken = a})

-- | Name or immutable Id of the schema
sgSchemaKey :: Lens' SchemasGet' Text
sgSchemaKey
  = lens _sgSchemaKey (\ s a -> s{_sgSchemaKey = a})

-- | Selector specifying which fields to include in a partial response.
sgFields :: Lens' SchemasGet' (Maybe Text)
sgFields = lens _sgFields (\ s a -> s{_sgFields = a})

-- | Data format for the response.
sgAlt :: Lens' SchemasGet' Text
sgAlt = lens _sgAlt (\ s a -> s{_sgAlt = a})

instance GoogleRequest SchemasGet' where
        type Rs SchemasGet' = Schema
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u SchemasGet{..}
          = go _sgQuotaUser _sgPrettyPrint _sgUserIp
              _sgCustomerId
              _sgKey
              _sgOauthToken
              _sgSchemaKey
              _sgFields
              _sgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy SchemasGetAPI) r u
