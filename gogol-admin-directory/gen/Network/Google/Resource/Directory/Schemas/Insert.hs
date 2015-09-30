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
    , siUserIp
    , siCustomerId
    , siKey
    , siOauthToken
    , siFields
    , siAlt
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
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Schema

-- | Create schema.
--
-- /See:/ 'schemasInsert'' smart constructor.
data SchemasInsert' = SchemasInsert'
    { _siQuotaUser   :: !(Maybe Text)
    , _siPrettyPrint :: !Bool
    , _siUserIp      :: !(Maybe Text)
    , _siCustomerId  :: !Text
    , _siKey         :: !(Maybe Text)
    , _siOauthToken  :: !(Maybe Text)
    , _siFields      :: !(Maybe Text)
    , _siAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SchemasInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siQuotaUser'
--
-- * 'siPrettyPrint'
--
-- * 'siUserIp'
--
-- * 'siCustomerId'
--
-- * 'siKey'
--
-- * 'siOauthToken'
--
-- * 'siFields'
--
-- * 'siAlt'
schemasInsert'
    :: Text -- ^ 'customerId'
    -> SchemasInsert'
schemasInsert' pSiCustomerId_ =
    SchemasInsert'
    { _siQuotaUser = Nothing
    , _siPrettyPrint = True
    , _siUserIp = Nothing
    , _siCustomerId = pSiCustomerId_
    , _siKey = Nothing
    , _siOauthToken = Nothing
    , _siFields = Nothing
    , _siAlt = JSON
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
siUserIp :: Lens' SchemasInsert' (Maybe Text)
siUserIp = lens _siUserIp (\ s a -> s{_siUserIp = a})

-- | Immutable id of the Google Apps account
siCustomerId :: Lens' SchemasInsert' Text
siCustomerId
  = lens _siCustomerId (\ s a -> s{_siCustomerId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
siKey :: Lens' SchemasInsert' (Maybe Text)
siKey = lens _siKey (\ s a -> s{_siKey = a})

-- | OAuth 2.0 token for the current user.
siOauthToken :: Lens' SchemasInsert' (Maybe Text)
siOauthToken
  = lens _siOauthToken (\ s a -> s{_siOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
siFields :: Lens' SchemasInsert' (Maybe Text)
siFields = lens _siFields (\ s a -> s{_siFields = a})

-- | Data format for the response.
siAlt :: Lens' SchemasInsert' Alt
siAlt = lens _siAlt (\ s a -> s{_siAlt = a})

instance GoogleRequest SchemasInsert' where
        type Rs SchemasInsert' = Schema
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u SchemasInsert'{..}
          = go _siQuotaUser (Just _siPrettyPrint) _siUserIp
              _siCustomerId
              _siKey
              _siOauthToken
              _siFields
              (Just _siAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SchemasInsertResource)
                      r
                      u
