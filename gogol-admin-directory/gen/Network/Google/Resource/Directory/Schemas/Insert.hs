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
    , siPayload
    , siCustomerId
    , siKey
    , siOAuthToken
    , siFields
    ) where

import           Network.Google.Directory.Types
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
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Schema :> Post '[JSON] Schema

-- | Create schema.
--
-- /See:/ 'schemasInsert'' smart constructor.
data SchemasInsert' = SchemasInsert'
    { _siQuotaUser   :: !(Maybe Text)
    , _siPrettyPrint :: !Bool
    , _siUserIP      :: !(Maybe Text)
    , _siPayload     :: !Schema
    , _siCustomerId  :: !Text
    , _siKey         :: !(Maybe AuthKey)
    , _siOAuthToken  :: !(Maybe OAuthToken)
    , _siFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'siPayload'
--
-- * 'siCustomerId'
--
-- * 'siKey'
--
-- * 'siOAuthToken'
--
-- * 'siFields'
schemasInsert'
    :: Schema -- ^ 'payload'
    -> Text -- ^ 'customerId'
    -> SchemasInsert'
schemasInsert' pSiPayload_ pSiCustomerId_ =
    SchemasInsert'
    { _siQuotaUser = Nothing
    , _siPrettyPrint = True
    , _siUserIP = Nothing
    , _siPayload = pSiPayload_
    , _siCustomerId = pSiCustomerId_
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

-- | Multipart request metadata.
siPayload :: Lens' SchemasInsert' Schema
siPayload
  = lens _siPayload (\ s a -> s{_siPayload = a})

-- | Immutable id of the Google Apps account
siCustomerId :: Lens' SchemasInsert' Text
siCustomerId
  = lens _siCustomerId (\ s a -> s{_siCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
siKey :: Lens' SchemasInsert' (Maybe AuthKey)
siKey = lens _siKey (\ s a -> s{_siKey = a})

-- | OAuth 2.0 token for the current user.
siOAuthToken :: Lens' SchemasInsert' (Maybe OAuthToken)
siOAuthToken
  = lens _siOAuthToken (\ s a -> s{_siOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
siFields :: Lens' SchemasInsert' (Maybe Text)
siFields = lens _siFields (\ s a -> s{_siFields = a})

instance GoogleAuth SchemasInsert' where
        _AuthKey = siKey . _Just
        _AuthToken = siOAuthToken . _Just

instance GoogleRequest SchemasInsert' where
        type Rs SchemasInsert' = Schema
        request = requestWith directoryRequest
        requestWith rq SchemasInsert'{..}
          = go _siCustomerId _siQuotaUser (Just _siPrettyPrint)
              _siUserIP
              _siFields
              _siKey
              _siOAuthToken
              (Just AltJSON)
              _siPayload
          where go
                  = clientBuild (Proxy :: Proxy SchemasInsertResource)
                      rq
