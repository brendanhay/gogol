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
-- Module      : Network.Google.Resource.EmailMigration.Mail.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Insert Mail into Google\'s Gmail backends
--
-- /See:/ <https://developers.google.com/admin-sdk/email-migration/v2/ Email Migration API v2 Reference> for @EmailMigrationMailInsert@.
module Network.Google.Resource.EmailMigration.Mail.Insert
    (
    -- * REST Resource
      MailInsertResource

    -- * Creating a Request
    , mailInsert'
    , MailInsert'

    -- * Request Lenses
    , miQuotaUser
    , miPrettyPrint
    , miUserIP
    , miPayload
    , miMedia
    , miKey
    , miOAuthToken
    , miUserKey
    , miFields
    ) where

import           Network.Google.EmailMigration.Types
import           Network.Google.Prelude

-- | A resource alias for @EmailMigrationMailInsert@ method which the
-- 'MailInsert'' request conforms to.
type MailInsertResource =
     Capture "userKey" Text :>
       "mail" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   Header "Authorization" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       MultipartRelated '[JSON] MailItem Stream :>
                         Post '[JSON] ()

-- | Insert Mail into Google\'s Gmail backends
--
-- /See:/ 'mailInsert'' smart constructor.
data MailInsert' = MailInsert'
    { _miQuotaUser   :: !(Maybe Text)
    , _miPrettyPrint :: !Bool
    , _miUserIP      :: !(Maybe Text)
    , _miPayload     :: !MailItem
    , _miMedia       :: !Stream
    , _miKey         :: !(Maybe AuthKey)
    , _miOAuthToken  :: !(Maybe OAuthToken)
    , _miUserKey     :: !Text
    , _miFields      :: !(Maybe Text)
    }

-- | Creates a value of 'MailInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miQuotaUser'
--
-- * 'miPrettyPrint'
--
-- * 'miUserIP'
--
-- * 'miPayload'
--
-- * 'miMedia'
--
-- * 'miKey'
--
-- * 'miOAuthToken'
--
-- * 'miUserKey'
--
-- * 'miFields'
mailInsert'
    :: MailItem -- ^ 'payload'
    -> Stream -- ^ 'media'
    -> Text -- ^ 'userKey'
    -> MailInsert'
mailInsert' pMiPayload_ pMiMedia_ pMiUserKey_ =
    MailInsert'
    { _miQuotaUser = Nothing
    , _miPrettyPrint = True
    , _miUserIP = Nothing
    , _miPayload = pMiPayload_
    , _miMedia = pMiMedia_
    , _miKey = Nothing
    , _miOAuthToken = Nothing
    , _miUserKey = pMiUserKey_
    , _miFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
miQuotaUser :: Lens' MailInsert' (Maybe Text)
miQuotaUser
  = lens _miQuotaUser (\ s a -> s{_miQuotaUser = a})

-- | Returns response with indentations and line breaks.
miPrettyPrint :: Lens' MailInsert' Bool
miPrettyPrint
  = lens _miPrettyPrint
      (\ s a -> s{_miPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
miUserIP :: Lens' MailInsert' (Maybe Text)
miUserIP = lens _miUserIP (\ s a -> s{_miUserIP = a})

-- | Multipart request metadata.
miPayload :: Lens' MailInsert' MailItem
miPayload
  = lens _miPayload (\ s a -> s{_miPayload = a})

miMedia :: Lens' MailInsert' Stream
miMedia = lens _miMedia (\ s a -> s{_miMedia = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
miKey :: Lens' MailInsert' (Maybe AuthKey)
miKey = lens _miKey (\ s a -> s{_miKey = a})

-- | OAuth 2.0 token for the current user.
miOAuthToken :: Lens' MailInsert' (Maybe OAuthToken)
miOAuthToken
  = lens _miOAuthToken (\ s a -> s{_miOAuthToken = a})

-- | The email or immutable id of the user
miUserKey :: Lens' MailInsert' Text
miUserKey
  = lens _miUserKey (\ s a -> s{_miUserKey = a})

-- | Selector specifying which fields to include in a partial response.
miFields :: Lens' MailInsert' (Maybe Text)
miFields = lens _miFields (\ s a -> s{_miFields = a})

instance GoogleAuth MailInsert' where
        _AuthKey = miKey . _Just
        _AuthToken = miOAuthToken . _Just

instance GoogleRequest MailInsert' where
        type Rs MailInsert' = ()
        request = requestWith emailMigrationRequest
        requestWith rq MailInsert'{..}
          = go _miUserKey _miQuotaUser (Just _miPrettyPrint)
              _miUserIP
              _miFields
              _miKey
              _miOAuthToken
              (Just AltJSON)
              _miPayload
              _miMedia
          where go
                  = clientBuild (Proxy :: Proxy MailInsertResource) rq
