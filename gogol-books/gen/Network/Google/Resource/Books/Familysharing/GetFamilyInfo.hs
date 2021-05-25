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
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.familysharing.getFamilyInfo@.
module Network.Google.Resource.Books.Familysharing.GetFamilyInfo
    (
    -- * REST Resource
      FamilysharingGetFamilyInfoResource

    -- * Creating a Request
    , familysharingGetFamilyInfo
    , FamilysharingGetFamilyInfo

    -- * Request Lenses
    , fgfiXgafv
    , fgfiUploadProtocol
    , fgfiAccessToken
    , fgfiUploadType
    , fgfiSource
    , fgfiCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.familysharing.getFamilyInfo@ method which the
-- 'FamilysharingGetFamilyInfo' request conforms to.
type FamilysharingGetFamilyInfoResource =
     "books" :>
       "v1" :>
         "familysharing" :>
           "getFamilyInfo" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "source" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] FamilyInfo

-- | Gets information regarding the family that the user is part of.
--
-- /See:/ 'familysharingGetFamilyInfo' smart constructor.
data FamilysharingGetFamilyInfo =
  FamilysharingGetFamilyInfo'
    { _fgfiXgafv :: !(Maybe Xgafv)
    , _fgfiUploadProtocol :: !(Maybe Text)
    , _fgfiAccessToken :: !(Maybe Text)
    , _fgfiUploadType :: !(Maybe Text)
    , _fgfiSource :: !(Maybe Text)
    , _fgfiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FamilysharingGetFamilyInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fgfiXgafv'
--
-- * 'fgfiUploadProtocol'
--
-- * 'fgfiAccessToken'
--
-- * 'fgfiUploadType'
--
-- * 'fgfiSource'
--
-- * 'fgfiCallback'
familysharingGetFamilyInfo
    :: FamilysharingGetFamilyInfo
familysharingGetFamilyInfo =
  FamilysharingGetFamilyInfo'
    { _fgfiXgafv = Nothing
    , _fgfiUploadProtocol = Nothing
    , _fgfiAccessToken = Nothing
    , _fgfiUploadType = Nothing
    , _fgfiSource = Nothing
    , _fgfiCallback = Nothing
    }


-- | V1 error format.
fgfiXgafv :: Lens' FamilysharingGetFamilyInfo (Maybe Xgafv)
fgfiXgafv
  = lens _fgfiXgafv (\ s a -> s{_fgfiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fgfiUploadProtocol :: Lens' FamilysharingGetFamilyInfo (Maybe Text)
fgfiUploadProtocol
  = lens _fgfiUploadProtocol
      (\ s a -> s{_fgfiUploadProtocol = a})

-- | OAuth access token.
fgfiAccessToken :: Lens' FamilysharingGetFamilyInfo (Maybe Text)
fgfiAccessToken
  = lens _fgfiAccessToken
      (\ s a -> s{_fgfiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fgfiUploadType :: Lens' FamilysharingGetFamilyInfo (Maybe Text)
fgfiUploadType
  = lens _fgfiUploadType
      (\ s a -> s{_fgfiUploadType = a})

-- | String to identify the originator of this request.
fgfiSource :: Lens' FamilysharingGetFamilyInfo (Maybe Text)
fgfiSource
  = lens _fgfiSource (\ s a -> s{_fgfiSource = a})

-- | JSONP
fgfiCallback :: Lens' FamilysharingGetFamilyInfo (Maybe Text)
fgfiCallback
  = lens _fgfiCallback (\ s a -> s{_fgfiCallback = a})

instance GoogleRequest FamilysharingGetFamilyInfo
         where
        type Rs FamilysharingGetFamilyInfo = FamilyInfo
        type Scopes FamilysharingGetFamilyInfo =
             '["https://www.googleapis.com/auth/books"]
        requestClient FamilysharingGetFamilyInfo'{..}
          = go _fgfiXgafv _fgfiUploadProtocol _fgfiAccessToken
              _fgfiUploadType
              _fgfiSource
              _fgfiCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy FamilysharingGetFamilyInfoResource)
                      mempty
