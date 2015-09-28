{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Directory.Schemas.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete schema
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.schemas.delete@.
module Network.Google.API.Directory.Schemas.Delete
    (
    -- * REST Resource
      SchemasDeleteAPI

    -- * Creating a Request
    , schemasDelete'
    , SchemasDelete'

    -- * Request Lenses
    , sdQuotaUser
    , sdPrettyPrint
    , sdUserIp
    , sdCustomerId
    , sdKey
    , sdOauthToken
    , sdSchemaKey
    , sdFields
    , sdAlt
    ) where

import           Network.Google.Admin.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for directory.schemas.delete which the
-- 'SchemasDelete'' request conforms to.
type SchemasDeleteAPI =
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
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Delete schema
--
-- /See:/ 'schemasDelete'' smart constructor.
data SchemasDelete' = SchemasDelete'
    { _sdQuotaUser   :: !(Maybe Text)
    , _sdPrettyPrint :: !Bool
    , _sdUserIp      :: !(Maybe Text)
    , _sdCustomerId  :: !Text
    , _sdKey         :: !(Maybe Text)
    , _sdOauthToken  :: !(Maybe Text)
    , _sdSchemaKey   :: !Text
    , _sdFields      :: !(Maybe Text)
    , _sdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SchemasDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdQuotaUser'
--
-- * 'sdPrettyPrint'
--
-- * 'sdUserIp'
--
-- * 'sdCustomerId'
--
-- * 'sdKey'
--
-- * 'sdOauthToken'
--
-- * 'sdSchemaKey'
--
-- * 'sdFields'
--
-- * 'sdAlt'
schemasDelete'
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'schemaKey'
    -> SchemasDelete'
schemasDelete' pSdCustomerId_ pSdSchemaKey_ =
    SchemasDelete'
    { _sdQuotaUser = Nothing
    , _sdPrettyPrint = True
    , _sdUserIp = Nothing
    , _sdCustomerId = pSdCustomerId_
    , _sdKey = Nothing
    , _sdOauthToken = Nothing
    , _sdSchemaKey = pSdSchemaKey_
    , _sdFields = Nothing
    , _sdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sdQuotaUser :: Lens' SchemasDelete' (Maybe Text)
sdQuotaUser
  = lens _sdQuotaUser (\ s a -> s{_sdQuotaUser = a})

-- | Returns response with indentations and line breaks.
sdPrettyPrint :: Lens' SchemasDelete' Bool
sdPrettyPrint
  = lens _sdPrettyPrint
      (\ s a -> s{_sdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sdUserIp :: Lens' SchemasDelete' (Maybe Text)
sdUserIp = lens _sdUserIp (\ s a -> s{_sdUserIp = a})

-- | Immutable id of the Google Apps account
sdCustomerId :: Lens' SchemasDelete' Text
sdCustomerId
  = lens _sdCustomerId (\ s a -> s{_sdCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sdKey :: Lens' SchemasDelete' (Maybe Text)
sdKey = lens _sdKey (\ s a -> s{_sdKey = a})

-- | OAuth 2.0 token for the current user.
sdOauthToken :: Lens' SchemasDelete' (Maybe Text)
sdOauthToken
  = lens _sdOauthToken (\ s a -> s{_sdOauthToken = a})

-- | Name or immutable Id of the schema
sdSchemaKey :: Lens' SchemasDelete' Text
sdSchemaKey
  = lens _sdSchemaKey (\ s a -> s{_sdSchemaKey = a})

-- | Selector specifying which fields to include in a partial response.
sdFields :: Lens' SchemasDelete' (Maybe Text)
sdFields = lens _sdFields (\ s a -> s{_sdFields = a})

-- | Data format for the response.
sdAlt :: Lens' SchemasDelete' Alt
sdAlt = lens _sdAlt (\ s a -> s{_sdAlt = a})

instance GoogleRequest SchemasDelete' where
        type Rs SchemasDelete' = ()
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u SchemasDelete'{..}
          = go _sdQuotaUser (Just _sdPrettyPrint) _sdUserIp
              _sdCustomerId
              _sdKey
              _sdOauthToken
              _sdSchemaKey
              _sdFields
              (Just _sdAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy SchemasDeleteAPI) r
                      u
