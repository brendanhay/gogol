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
-- Module      : Network.Google.Resource.Mirror.Contacts.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a contact.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorContactsDelete@.
module Network.Google.Resource.Mirror.Contacts.Delete
    (
    -- * REST Resource
      ContactsDeleteResource

    -- * Creating a Request
    , contactsDelete'
    , ContactsDelete'

    -- * Request Lenses
    , cdId
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorContactsDelete@ method which the
-- 'ContactsDelete'' request conforms to.
type ContactsDeleteResource =
     "contacts" :>
       Capture "id" Text :>
         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a contact.
--
-- /See:/ 'contactsDelete'' smart constructor.
newtype ContactsDelete' = ContactsDelete'
    { _cdId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContactsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdId'
contactsDelete'
    :: Text -- ^ 'id'
    -> ContactsDelete'
contactsDelete' pCdId_ =
    ContactsDelete'
    { _cdId = pCdId_
    }

-- | The ID of the contact.
cdId :: Lens' ContactsDelete' Text
cdId = lens _cdId (\ s a -> s{_cdId = a})

instance GoogleRequest ContactsDelete' where
        type Rs ContactsDelete' = ()
        requestClient ContactsDelete'{..}
          = go _cdId (Just AltJSON) mirrorService
          where go
                  = buildClient (Proxy :: Proxy ContactsDeleteResource)
                      mempty
