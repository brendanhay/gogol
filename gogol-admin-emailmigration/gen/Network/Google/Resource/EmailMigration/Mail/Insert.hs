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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Insert Mail into Google\'s Gmail backends
--
-- /See:/ <https://developers.google.com/admin-sdk/email-migration/v2/ Email Migration API v2 Reference> for @emailMigration.mail.insert@.
module Network.Google.Resource.EmailMigration.Mail.Insert
    (
    -- * REST Resource
      MailInsertResource

    -- * Creating a Request
    , mailInsert
    , MailInsert

    -- * Request Lenses
    , miPayload
    , miUserKey
    ) where

import           Network.Google.EmailMigration.Types
import           Network.Google.Prelude

-- | A resource alias for @emailMigration.mail.insert@ method which the
-- 'MailInsert' request conforms to.
type MailInsertResource =
     "email" :>
       "v2" :>
         "users" :>
           Capture "userKey" Text :>
             "mail" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] MailItem :> Post '[JSON] ()
       :<|>
       "upload" :>
         "email" :>
           "v2" :>
             "users" :>
               Capture "userKey" Text :>
                 "mail" :>
                   QueryParam "alt" AltJSON :>
                     QueryParam "uploadType" AltMedia :>
                       MultipartRelated '[JSON] MailItem RequestBody :>
                         Post '[JSON] ()

-- | Insert Mail into Google\'s Gmail backends
--
-- /See:/ 'mailInsert' smart constructor.
data MailInsert = MailInsert'
    { _miPayload :: !MailItem
    , _miUserKey :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MailInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miPayload'
--
-- * 'miUserKey'
mailInsert
    :: MailItem -- ^ 'miPayload'
    -> Text -- ^ 'miUserKey'
    -> MailInsert
mailInsert pMiPayload_ pMiUserKey_ =
    MailInsert'
    { _miPayload = pMiPayload_
    , _miUserKey = pMiUserKey_
    }

-- | Multipart request metadata.
miPayload :: Lens' MailInsert MailItem
miPayload
  = lens _miPayload (\ s a -> s{_miPayload = a})

-- | The email or immutable id of the user
miUserKey :: Lens' MailInsert Text
miUserKey
  = lens _miUserKey (\ s a -> s{_miUserKey = a})

instance GoogleRequest MailInsert where
        type Rs MailInsert = ()
        type Scopes MailInsert =
             '["https://www.googleapis.com/auth/email.migration"]
        requestClient MailInsert'{..}
          = go _miUserKey (Just AltJSON) _miPayload
              emailMigrationService
          where go :<|> _
                  = buildClient (Proxy :: Proxy MailInsertResource)
                      mempty

instance GoogleRequest (MediaUpload MailInsert) where
        type Rs (MediaUpload MailInsert) = ()
        type Scopes (MediaUpload MailInsert) =
             Scopes MailInsert
        requestClient (MediaUpload MailInsert'{..} body)
          = go _miUserKey (Just AltJSON) (Just AltMedia)
              _miPayload
              body
              emailMigrationService
          where _ :<|> go
                  = buildClient (Proxy :: Proxy MailInsertResource)
                      mempty
