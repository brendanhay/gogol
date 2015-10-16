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
    , miPayload
    , miMedia
    , miUserKey
    ) where

import           Network.Google.EmailMigration.Types
import           Network.Google.Prelude

-- | A resource alias for @EmailMigrationMailInsert@ method which the
-- 'MailInsert'' request conforms to.
type MailInsertResource =
     Capture "userKey" Text :>
       "mail" :>
         QueryParam "alt" AltJSON :>
           MultipartRelated '[JSON] MailItem Body :>
             Post '[JSON] ()

-- | Insert Mail into Google\'s Gmail backends
--
-- /See:/ 'mailInsert'' smart constructor.
data MailInsert' = MailInsert'
    { _miPayload :: !MailItem
    , _miMedia   :: !Body
    , _miUserKey :: !Text
    }

-- | Creates a value of 'MailInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miPayload'
--
-- * 'miMedia'
--
-- * 'miUserKey'
mailInsert'
    :: MailItem -- ^ 'payload'
    -> Body -- ^ 'media'
    -> Text -- ^ 'userKey'
    -> MailInsert'
mailInsert' pMiPayload_ pMiMedia_ pMiUserKey_ =
    MailInsert'
    { _miPayload = pMiPayload_
    , _miMedia = pMiMedia_
    , _miUserKey = pMiUserKey_
    }

-- | Multipart request metadata.
miPayload :: Lens' MailInsert' MailItem
miPayload
  = lens _miPayload (\ s a -> s{_miPayload = a})

miMedia :: Lens' MailInsert' Body
miMedia = lens _miMedia (\ s a -> s{_miMedia = a})

-- | The email or immutable id of the user
miUserKey :: Lens' MailInsert' Text
miUserKey
  = lens _miUserKey (\ s a -> s{_miUserKey = a})

instance GoogleRequest MailInsert' where
        type Rs MailInsert' = ()
        requestClient MailInsert'{..}
          = go _miUserKey (Just AltJSON) _miPayload _miMedia
              emailMigrationService
          where go
                  = buildClient (Proxy :: Proxy MailInsertResource)
                      mempty
