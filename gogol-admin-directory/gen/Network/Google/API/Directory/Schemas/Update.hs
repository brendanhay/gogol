{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Directory.Schemas.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update schema
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.schemas.update@.
module Network.Google.API.Directory.Schemas.Update
    (
    -- * REST Resource
      SchemasUpdateAPI

    -- * Creating a Request
    , schemasUpdate'
    , SchemasUpdate'

    -- * Request Lenses
    , suQuotaUser
    , suPrettyPrint
    , suUserIp
    , suCustomerId
    , suKey
    , suOauthToken
    , suSchemaKey
    , suFields
    , suAlt
    ) where

import           Network.Google.Admin.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for directory.schemas.update which the
-- 'SchemasUpdate'' request conforms to.
type SchemasUpdateAPI =
     "customer" :>
       Capture "customerId" Text :>
         "schemas" :>
           Capture "schemaKey" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Put '[JSON] Schema

-- | Update schema
--
-- /See:/ 'schemasUpdate'' smart constructor.
data SchemasUpdate' = SchemasUpdate'
    { _suQuotaUser   :: !(Maybe Text)
    , _suPrettyPrint :: !Bool
    , _suUserIp      :: !(Maybe Text)
    , _suCustomerId  :: !Text
    , _suKey         :: !(Maybe Text)
    , _suOauthToken  :: !(Maybe Text)
    , _suSchemaKey   :: !Text
    , _suFields      :: !(Maybe Text)
    , _suAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SchemasUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suQuotaUser'
--
-- * 'suPrettyPrint'
--
-- * 'suUserIp'
--
-- * 'suCustomerId'
--
-- * 'suKey'
--
-- * 'suOauthToken'
--
-- * 'suSchemaKey'
--
-- * 'suFields'
--
-- * 'suAlt'
schemasUpdate'
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'schemaKey'
    -> SchemasUpdate'
schemasUpdate' pSuCustomerId_ pSuSchemaKey_ =
    SchemasUpdate'
    { _suQuotaUser = Nothing
    , _suPrettyPrint = True
    , _suUserIp = Nothing
    , _suCustomerId = pSuCustomerId_
    , _suKey = Nothing
    , _suOauthToken = Nothing
    , _suSchemaKey = pSuSchemaKey_
    , _suFields = Nothing
    , _suAlt = JSON
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
suUserIp :: Lens' SchemasUpdate' (Maybe Text)
suUserIp = lens _suUserIp (\ s a -> s{_suUserIp = a})

-- | Immutable id of the Google Apps account
suCustomerId :: Lens' SchemasUpdate' Text
suCustomerId
  = lens _suCustomerId (\ s a -> s{_suCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
suKey :: Lens' SchemasUpdate' (Maybe Text)
suKey = lens _suKey (\ s a -> s{_suKey = a})

-- | OAuth 2.0 token for the current user.
suOauthToken :: Lens' SchemasUpdate' (Maybe Text)
suOauthToken
  = lens _suOauthToken (\ s a -> s{_suOauthToken = a})

-- | Name or immutable Id of the schema.
suSchemaKey :: Lens' SchemasUpdate' Text
suSchemaKey
  = lens _suSchemaKey (\ s a -> s{_suSchemaKey = a})

-- | Selector specifying which fields to include in a partial response.
suFields :: Lens' SchemasUpdate' (Maybe Text)
suFields = lens _suFields (\ s a -> s{_suFields = a})

-- | Data format for the response.
suAlt :: Lens' SchemasUpdate' Alt
suAlt = lens _suAlt (\ s a -> s{_suAlt = a})

instance GoogleRequest SchemasUpdate' where
        type Rs SchemasUpdate' = Schema
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u SchemasUpdate'{..}
          = go _suQuotaUser (Just _suPrettyPrint) _suUserIp
              _suCustomerId
              _suKey
              _suOauthToken
              _suSchemaKey
              _suFields
              (Just _suAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy SchemasUpdateAPI) r
                      u
