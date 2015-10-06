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
-- Module      : Network.Google.Resource.Directory.Schemas.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete schema
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectorySchemasDelete@.
module Network.Google.Resource.Directory.Schemas.Delete
    (
    -- * REST Resource
      SchemasDeleteResource

    -- * Creating a Request
    , schemasDelete'
    , SchemasDelete'

    -- * Request Lenses
    , sdQuotaUser
    , sdPrettyPrint
    , sdUserIP
    , sdCustomerId
    , sdKey
    , sdOAuthToken
    , sdSchemaKey
    , sdFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectorySchemasDelete@ which the
-- 'SchemasDelete'' request conforms to.
type SchemasDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete schema
--
-- /See:/ 'schemasDelete'' smart constructor.
data SchemasDelete' = SchemasDelete'
    { _sdQuotaUser   :: !(Maybe Text)
    , _sdPrettyPrint :: !Bool
    , _sdUserIP      :: !(Maybe Text)
    , _sdCustomerId  :: !Text
    , _sdKey         :: !(Maybe AuthKey)
    , _sdOAuthToken  :: !(Maybe OAuthToken)
    , _sdSchemaKey   :: !Text
    , _sdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SchemasDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdQuotaUser'
--
-- * 'sdPrettyPrint'
--
-- * 'sdUserIP'
--
-- * 'sdCustomerId'
--
-- * 'sdKey'
--
-- * 'sdOAuthToken'
--
-- * 'sdSchemaKey'
--
-- * 'sdFields'
schemasDelete'
    :: Text -- ^ 'customerId'
    -> Text -- ^ 'schemaKey'
    -> SchemasDelete'
schemasDelete' pSdCustomerId_ pSdSchemaKey_ =
    SchemasDelete'
    { _sdQuotaUser = Nothing
    , _sdPrettyPrint = True
    , _sdUserIP = Nothing
    , _sdCustomerId = pSdCustomerId_
    , _sdKey = Nothing
    , _sdOAuthToken = Nothing
    , _sdSchemaKey = pSdSchemaKey_
    , _sdFields = Nothing
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
sdUserIP :: Lens' SchemasDelete' (Maybe Text)
sdUserIP = lens _sdUserIP (\ s a -> s{_sdUserIP = a})

-- | Immutable id of the Google Apps account
sdCustomerId :: Lens' SchemasDelete' Text
sdCustomerId
  = lens _sdCustomerId (\ s a -> s{_sdCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sdKey :: Lens' SchemasDelete' (Maybe AuthKey)
sdKey = lens _sdKey (\ s a -> s{_sdKey = a})

-- | OAuth 2.0 token for the current user.
sdOAuthToken :: Lens' SchemasDelete' (Maybe OAuthToken)
sdOAuthToken
  = lens _sdOAuthToken (\ s a -> s{_sdOAuthToken = a})

-- | Name or immutable Id of the schema
sdSchemaKey :: Lens' SchemasDelete' Text
sdSchemaKey
  = lens _sdSchemaKey (\ s a -> s{_sdSchemaKey = a})

-- | Selector specifying which fields to include in a partial response.
sdFields :: Lens' SchemasDelete' (Maybe Text)
sdFields = lens _sdFields (\ s a -> s{_sdFields = a})

instance GoogleAuth SchemasDelete' where
        authKey = sdKey . _Just
        authToken = sdOAuthToken . _Just

instance GoogleRequest SchemasDelete' where
        type Rs SchemasDelete' = ()
        request = requestWith directoryRequest
        requestWith rq SchemasDelete'{..}
          = go _sdCustomerId _sdSchemaKey _sdQuotaUser
              (Just _sdPrettyPrint)
              _sdUserIP
              _sdFields
              _sdKey
              _sdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy SchemasDeleteResource)
                      rq
