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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.APKListings.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the APK-specific localized listings for a specified APK.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.apklistings.list@.
module Network.Google.Resource.AndroidPublisher.Edits.APKListings.List
    (
    -- * REST Resource
      EditsAPKListingsListResource

    -- * Creating a Request
    , editsAPKListingsList'
    , EditsAPKListingsList'

    -- * Request Lenses
    , eapkllPackageName
    , eapkllAPKVersionCode
    , eapkllEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.apklistings.list@ method which the
-- 'EditsAPKListingsList'' request conforms to.
type EditsAPKListingsListResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "listings" :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] APKListingsListResponse

-- | Lists all the APK-specific localized listings for a specified APK.
--
-- /See:/ 'editsAPKListingsList'' smart constructor.
data EditsAPKListingsList' = EditsAPKListingsList'
    { _eapkllPackageName    :: !Text
    , _eapkllAPKVersionCode :: !Int32
    , _eapkllEditId         :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsAPKListingsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eapkllPackageName'
--
-- * 'eapkllAPKVersionCode'
--
-- * 'eapkllEditId'
editsAPKListingsList'
    :: Text -- ^ 'eapkllPackageName'
    -> Int32 -- ^ 'eapkllAPKVersionCode'
    -> Text -- ^ 'eapkllEditId'
    -> EditsAPKListingsList'
editsAPKListingsList' pEapkllPackageName_ pEapkllAPKVersionCode_ pEapkllEditId_ =
    EditsAPKListingsList'
    { _eapkllPackageName = pEapkllPackageName_
    , _eapkllAPKVersionCode = pEapkllAPKVersionCode_
    , _eapkllEditId = pEapkllEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eapkllPackageName :: Lens' EditsAPKListingsList' Text
eapkllPackageName
  = lens _eapkllPackageName
      (\ s a -> s{_eapkllPackageName = a})

-- | The APK version code whose APK-specific listings should be read or
-- modified.
eapkllAPKVersionCode :: Lens' EditsAPKListingsList' Int32
eapkllAPKVersionCode
  = lens _eapkllAPKVersionCode
      (\ s a -> s{_eapkllAPKVersionCode = a})

-- | Unique identifier for this edit.
eapkllEditId :: Lens' EditsAPKListingsList' Text
eapkllEditId
  = lens _eapkllEditId (\ s a -> s{_eapkllEditId = a})

instance GoogleRequest EditsAPKListingsList' where
        type Rs EditsAPKListingsList' =
             APKListingsListResponse
        requestClient EditsAPKListingsList'{..}
          = go _eapkllPackageName _eapkllEditId
              _eapkllAPKVersionCode
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsAPKListingsListResource)
                      mempty
