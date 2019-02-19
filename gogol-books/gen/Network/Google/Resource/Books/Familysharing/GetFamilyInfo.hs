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
-- Module      : Network.Google.Resource.Books.Familysharing.GetFamilyInfo
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information regarding the family that the user is part of.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.familysharing.getFamilyInfo@.
module Network.Google.Resource.Books.Familysharing.GetFamilyInfo
    (
    -- * REST Resource
      FamilysharingGetFamilyInfoResource

    -- * Creating a Request
    , familysharingGetFamilyInfo
    , FamilysharingGetFamilyInfo

    -- * Request Lenses
    , fgfiSource
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.familysharing.getFamilyInfo@ method which the
-- 'FamilysharingGetFamilyInfo' request conforms to.
type FamilysharingGetFamilyInfoResource =
     "books" :>
       "v1" :>
         "familysharing" :>
           "getFamilyInfo" :>
             QueryParam "source" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] FamilyInfo

-- | Gets information regarding the family that the user is part of.
--
-- /See:/ 'familysharingGetFamilyInfo' smart constructor.
newtype FamilysharingGetFamilyInfo =
  FamilysharingGetFamilyInfo'
    { _fgfiSource :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FamilysharingGetFamilyInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fgfiSource'
familysharingGetFamilyInfo
    :: FamilysharingGetFamilyInfo
familysharingGetFamilyInfo = FamilysharingGetFamilyInfo' {_fgfiSource = Nothing}


-- | String to identify the originator of this request.
fgfiSource :: Lens' FamilysharingGetFamilyInfo (Maybe Text)
fgfiSource
  = lens _fgfiSource (\ s a -> s{_fgfiSource = a})

instance GoogleRequest FamilysharingGetFamilyInfo
         where
        type Rs FamilysharingGetFamilyInfo = FamilyInfo
        type Scopes FamilysharingGetFamilyInfo =
             '["https://www.googleapis.com/auth/books"]
        requestClient FamilysharingGetFamilyInfo'{..}
          = go _fgfiSource (Just AltJSON) booksService
          where go
                  = buildClient
                      (Proxy :: Proxy FamilysharingGetFamilyInfoResource)
                      mempty
