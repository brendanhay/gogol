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
-- Module      : Network.Google.Resource.Mirror.Contacts.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new contact.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.contacts.insert@.
module Network.Google.Resource.Mirror.Contacts.Insert
    (
    -- * REST Resource
      ContactsInsertResource

    -- * Creating a Request
    , contactsInsert
    , ContactsInsert

    -- * Request Lenses
    , ciPayload
    ) where

import Network.Google.Mirror.Types
import Network.Google.Prelude

-- | A resource alias for @mirror.contacts.insert@ method which the
-- 'ContactsInsert' request conforms to.
type ContactsInsertResource =
     "mirror" :>
       "v1" :>
         "contacts" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Contact :> Post '[JSON] Contact

-- | Inserts a new contact.
--
-- /See:/ 'contactsInsert' smart constructor.
newtype ContactsInsert =
  ContactsInsert'
    { _ciPayload :: Contact
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ContactsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciPayload'
contactsInsert
    :: Contact -- ^ 'ciPayload'
    -> ContactsInsert
contactsInsert pCiPayload_ = ContactsInsert' {_ciPayload = pCiPayload_}


-- | Multipart request metadata.
ciPayload :: Lens' ContactsInsert Contact
ciPayload
  = lens _ciPayload (\ s a -> s{_ciPayload = a})

instance GoogleRequest ContactsInsert where
        type Rs ContactsInsert = Contact
        type Scopes ContactsInsert =
             '["https://www.googleapis.com/auth/glass.timeline"]
        requestClient ContactsInsert'{..}
          = go (Just AltJSON) _ciPayload mirrorService
          where go
                  = buildClient (Proxy :: Proxy ContactsInsertResource)
                      mempty
