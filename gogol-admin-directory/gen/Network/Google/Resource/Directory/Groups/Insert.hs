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
-- Module      : Network.Google.Resource.Directory.Groups.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create Group
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryGroupsInsert@.
module Network.Google.Resource.Directory.Groups.Insert
    (
    -- * REST Resource
      GroupsInsertResource

    -- * Creating a Request
    , groupsInsert'
    , GroupsInsert'

    -- * Request Lenses
    , giPayload
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryGroupsInsert@ method which the
-- 'GroupsInsert'' request conforms to.
type GroupsInsertResource =
     "groups" :>
       QueryParam "alt" AltJSON :>
         ReqBody '[JSON] Group :> Post '[JSON] Group

-- | Create Group
--
-- /See:/ 'groupsInsert'' smart constructor.
newtype GroupsInsert' = GroupsInsert'
    { _giPayload :: Group
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GroupsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giPayload'
groupsInsert'
    :: Group -- ^ 'payload'
    -> GroupsInsert'
groupsInsert' pGiPayload_ =
    GroupsInsert'
    { _giPayload = pGiPayload_
    }

-- | Multipart request metadata.
giPayload :: Lens' GroupsInsert' Group
giPayload
  = lens _giPayload (\ s a -> s{_giPayload = a})

instance GoogleRequest GroupsInsert' where
        type Rs GroupsInsert' = Group
        requestClient GroupsInsert'{..}
          = go (Just AltJSON) _giPayload directoryService
          where go
                  = buildClient (Proxy :: Proxy GroupsInsertResource)
                      mempty
