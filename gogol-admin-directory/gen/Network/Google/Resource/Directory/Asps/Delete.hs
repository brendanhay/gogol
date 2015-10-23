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
-- Module      : Network.Google.Resource.Directory.Asps.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete an ASP issued by a user.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.asps.delete@.
module Network.Google.Resource.Directory.Asps.Delete
    (
    -- * REST Resource
      AspsDeleteResource

    -- * Creating a Request
    , aspsDelete
    , AspsDelete

    -- * Request Lenses
    , adCodeId
    , adUserKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.asps.delete@ method which the
-- 'AspsDelete' request conforms to.
type AspsDeleteResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "asps" :>
                 Capture "codeId" (JSONText Int32) :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete an ASP issued by a user.
--
-- /See:/ 'aspsDelete' smart constructor.
data AspsDelete = AspsDelete
    { _adCodeId  :: !(JSONText Int32)
    , _adUserKey :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AspsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adCodeId'
--
-- * 'adUserKey'
aspsDelete
    :: Int32 -- ^ 'adCodeId'
    -> Text -- ^ 'adUserKey'
    -> AspsDelete
aspsDelete pAdCodeId_ pAdUserKey_ =
    AspsDelete
    { _adCodeId = pAdCodeId_
    , _adUserKey = pAdUserKey_
    }

-- | The unique ID of the ASP to be deleted.
adCodeId :: Lens' AspsDelete Int32
adCodeId
  = lens _adCodeId (\ s a -> s{_adCodeId = a}) .
      _Coerce

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
adUserKey :: Lens' AspsDelete Text
adUserKey
  = lens _adUserKey (\ s a -> s{_adUserKey = a})

instance GoogleRequest AspsDelete where
        type Rs AspsDelete = ()
        requestClient AspsDelete{..}
          = go _adUserKey _adCodeId (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy AspsDeleteResource)
                      mempty
