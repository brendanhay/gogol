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
-- Module      : Network.Google.Resource.Directory.Schemas.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create schema.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectorySchemasInsert@.
module Network.Google.Resource.Directory.Schemas.Insert
    (
    -- * REST Resource
      SchemasInsertResource

    -- * Creating a Request
    , schemasInsert'
    , SchemasInsert'

    -- * Request Lenses
    , siQuotaUser
    , siPrettyPrint
    , siUserIP
    , siCustomerId
    , siSchema
    , siKey
    , siOAuthToken
    , siFields
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectorySchemasInsert@ which the
-- 'SchemasInsert'' request conforms to.
type SchemasInsertResource =
     "customer" :>
       Capture "customerId" Text :>
         "schemas" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Schema :> Post '[JSON] Schema

-- | Create schema.
--
-- /See:/ 'schemasInsert'' smart constructor.
data SchemasInsert' = SchemasInsert'
    { _siQuotaUser   :: !(Maybe Text)
    , _siPrettyPrint :: !Bool
    , _siUserIP      :: !(Maybe Text)
    , _siCustomerId  :: !Text
    , _siSchema      :: !Schema
    , _siKey         :: !(Maybe Key)
    , _siOAuthToken  :: !(Maybe OAuthToken)
    , _siFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SchemasInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siQuotaUser'
--
-- * 'siPrettyPrint'
--
-- * 'siUserIP'
--
-- * 'siCustomerId'
--
-- * 'siSchema'
--
-- * 'siKey'
--
-- * 'siOAuthToken'
--
-- * 'siFields'
schemasInsert'
    :: Text -- ^ 'customerId'
    -> Schema -- ^ 'Schema'
    -> SchemasInsert'
schemasInsert' pSiCustomerId_ pSiSchema_ =
    SchemasInsert'
    { _siQuotaUser = Nothing
    , _siPrettyPrint = True
    , _siUserIP = Nothing
    , _siCustomerId = pSiCustomerId_
    , _siSchema = pSiSchema_
    , _siKey = Nothing
    , _siOAuthToken = Nothing
    , _siFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
siQuotaUser :: Lens' SchemasInsert' (Maybe Text)
siQuotaUser
  = lens _siQuotaUser (\ s a -> s{_siQuotaUser = a})

-- | Returns response with indentations and line breaks.
siPrettyPrint :: Lens' SchemasInsert' Bool
siPrettyPrint
  = lens _siPrettyPrint
      (\ s a -> s{_siPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
siUserIP :: Lens' SchemasInsert' (Maybe Text)
siUserIP = lens _siUserIP (\ s a -> s{_siUserIP = a})

-- | Immutable id of the Google Apps account
siCustomerId :: Lens' SchemasInsert' Text
siCustomerId
  = lens _siCustomerId (\ s a -> s{_siCustomerId = a})

-- | Multipart request metadata.
siSchema :: Lens' SchemasInsert' Schema
siSchema = lens _siSchema (\ s a -> s{_siSchema = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
siKey :: Lens' SchemasInsert' (Maybe Key)
siKey = lens _siKey (\ s a -> s{_siKey = a})

-- | OAuth 2.0 token for the current user.
siOAuthToken :: Lens' SchemasInsert' (Maybe OAuthToken)
siOAuthToken
  = lens _siOAuthToken (\ s a -> s{_siOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
siFields :: Lens' SchemasInsert' (Maybe Text)
siFields = lens _siFields (\ s a -> s{_siFields = a})

instance GoogleAuth SchemasInsert' where
        authKey = siKey . _Just
        authToken = siOAuthToken . _Just

instance GoogleRequest SchemasInsert' where
        type Rs SchemasInsert' = Schema
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u SchemasInsert'{..}
          = go _siQuotaUser (Just _siPrettyPrint) _siUserIP
              _siCustomerId
              _siKey
              _siOAuthToken
              _siFields
              (Just AltJSON)
              _siSchema
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SchemasInsertResource)
                      r
                      u
