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
-- Module      : Network.Google.Resource.Mirror.Contacts.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a contact in place.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorContactsUpdate@.
module Network.Google.Resource.Mirror.Contacts.Update
    (
    -- * REST Resource
      ContactsUpdateResource

    -- * Creating a Request
    , contactsUpdate'
    , ContactsUpdate'

    -- * Request Lenses
    , cuPayload
    , cuId
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorContactsUpdate@ method which the
-- 'ContactsUpdate'' request conforms to.
type ContactsUpdateResource =
     "contacts" :>
       Capture "id" Text :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] Contact :> Put '[JSON] Contact

-- | Updates a contact in place.
--
-- /See:/ 'contactsUpdate'' smart constructor.
data ContactsUpdate' = ContactsUpdate'
    { _cuPayload :: !Contact
    , _cuId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContactsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuPayload'
--
-- * 'cuId'
contactsUpdate'
    :: Contact -- ^ 'payload'
    -> Text -- ^ 'id'
    -> ContactsUpdate'
contactsUpdate' pCuPayload_ pCuId_ =
    ContactsUpdate'
    { _cuPayload = pCuPayload_
    , _cuId = pCuId_
    }

-- | Multipart request metadata.
cuPayload :: Lens' ContactsUpdate' Contact
cuPayload
  = lens _cuPayload (\ s a -> s{_cuPayload = a})

-- | The ID of the contact.
cuId :: Lens' ContactsUpdate' Text
cuId = lens _cuId (\ s a -> s{_cuId = a})

instance GoogleRequest ContactsUpdate' where
        type Rs ContactsUpdate' = Contact
        requestClient ContactsUpdate'{..}
          = go _cuId (Just AltJSON) _cuPayload mirror
          where go
                  = buildClient (Proxy :: Proxy ContactsUpdateResource)
                      mempty
