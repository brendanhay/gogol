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
-- Module      : Network.Google.Resource.Directory.Asps.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the ASPs issued by a user.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.asps.list@.
module Network.Google.Resource.Directory.Asps.List
    (
    -- * REST Resource
      AspsListResource

    -- * Creating a Request
    , aspsList'
    , AspsList'

    -- * Request Lenses
    , alUserKey
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @directory.asps.list@ method which the
-- 'AspsList'' request conforms to.
type AspsListResource =
     "users" :>
       Capture "userKey" Text :>
         "asps" :>
           QueryParam "alt" AltJSON :> Get '[JSON] Asps

-- | List the ASPs issued by a user.
--
-- /See:/ 'aspsList'' smart constructor.
newtype AspsList' = AspsList'
    { _alUserKey :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AspsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alUserKey'
aspsList'
    :: Text -- ^ 'alUserKey'
    -> AspsList'
aspsList' pAlUserKey_ =
    AspsList'
    { _alUserKey = pAlUserKey_
    }

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
alUserKey :: Lens' AspsList' Text
alUserKey
  = lens _alUserKey (\ s a -> s{_alUserKey = a})

instance GoogleRequest AspsList' where
        type Rs AspsList' = Asps
        requestClient AspsList'{..}
          = go _alUserKey (Just AltJSON) directoryService
          where go
                  = buildClient (Proxy :: Proxy AspsListResource)
                      mempty
