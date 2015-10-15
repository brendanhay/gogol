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
-- Module      : Network.Google.Resource.Mirror.Contacts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of contacts for the authenticated user.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @MirrorContactsList@.
module Network.Google.Resource.Mirror.Contacts.List
    (
    -- * REST Resource
      ContactsListResource

    -- * Creating a Request
    , contactsList'
    , ContactsList'

    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @MirrorContactsList@ method which the
-- 'ContactsList'' request conforms to.
type ContactsListResource =
     "contacts" :>
       QueryParam "alt" AltJSON :>
         Get '[JSON] ContactsListResponse

-- | Retrieves a list of contacts for the authenticated user.
--
-- /See:/ 'contactsList'' smart constructor.
data ContactsList' =
    ContactsList'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ContactsList'' with the minimum fields required to make a request.
--
contactsList'
    :: ContactsList'
contactsList' = ContactsList'

instance GoogleRequest ContactsList' where
        type Rs ContactsList' = ContactsListResponse
        requestClient ContactsList'{}
          = go (Just AltJSON) mirror
          where go
                  = buildClient (Proxy :: Proxy ContactsListResource)
                      mempty
