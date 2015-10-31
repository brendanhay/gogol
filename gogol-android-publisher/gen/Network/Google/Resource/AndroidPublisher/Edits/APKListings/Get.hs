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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.APKListings.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches the APK-specific localized listing for a specified APK and
-- language code.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.apklistings.get@.
module Network.Google.Resource.AndroidPublisher.Edits.APKListings.Get
    (
    -- * REST Resource
      EditsAPKListingsGetResource

    -- * Creating a Request
    , editsAPKListingsGet
    , EditsAPKListingsGet

    -- * Request Lenses
    , eapklgPackageName
    , eapklgAPKVersionCode
    , eapklgLanguage
    , eapklgEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.apklistings.get@ method which the
-- 'EditsAPKListingsGet' request conforms to.
type EditsAPKListingsGetResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "apks" :>
                   Capture "apkVersionCode" (Textual Int32) :>
                     "listings" :>
                       Capture "language" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] APKListing

-- | Fetches the APK-specific localized listing for a specified APK and
-- language code.
--
-- /See:/ 'editsAPKListingsGet' smart constructor.
data EditsAPKListingsGet = EditsAPKListingsGet
    { _eapklgPackageName    :: !Text
    , _eapklgAPKVersionCode :: !(Textual Int32)
    , _eapklgLanguage       :: !Text
    , _eapklgEditId         :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsAPKListingsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eapklgPackageName'
--
-- * 'eapklgAPKVersionCode'
--
-- * 'eapklgLanguage'
--
-- * 'eapklgEditId'
editsAPKListingsGet
    :: Text -- ^ 'eapklgPackageName'
    -> Int32 -- ^ 'eapklgAPKVersionCode'
    -> Text -- ^ 'eapklgLanguage'
    -> Text -- ^ 'eapklgEditId'
    -> EditsAPKListingsGet
editsAPKListingsGet pEapklgPackageName_ pEapklgAPKVersionCode_ pEapklgLanguage_ pEapklgEditId_ =
    EditsAPKListingsGet
    { _eapklgPackageName = pEapklgPackageName_
    , _eapklgAPKVersionCode = _Coerce # pEapklgAPKVersionCode_
    , _eapklgLanguage = pEapklgLanguage_
    , _eapklgEditId = pEapklgEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eapklgPackageName :: Lens' EditsAPKListingsGet Text
eapklgPackageName
  = lens _eapklgPackageName
      (\ s a -> s{_eapklgPackageName = a})

-- | The APK version code whose APK-specific listings should be read or
-- modified.
eapklgAPKVersionCode :: Lens' EditsAPKListingsGet Int32
eapklgAPKVersionCode
  = lens _eapklgAPKVersionCode
      (\ s a -> s{_eapklgAPKVersionCode = a})
      . _Coerce

-- | The language code (a BCP-47 language tag) of the APK-specific localized
-- listing to read or modify. For example, to select Austrian German, pass
-- \"de-AT\".
eapklgLanguage :: Lens' EditsAPKListingsGet Text
eapklgLanguage
  = lens _eapklgLanguage
      (\ s a -> s{_eapklgLanguage = a})

-- | Unique identifier for this edit.
eapklgEditId :: Lens' EditsAPKListingsGet Text
eapklgEditId
  = lens _eapklgEditId (\ s a -> s{_eapklgEditId = a})

instance GoogleRequest EditsAPKListingsGet where
        type Rs EditsAPKListingsGet = APKListing
        type Scopes EditsAPKListingsGet =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsAPKListingsGet{..}
          = go _eapklgPackageName _eapklgEditId
              _eapklgAPKVersionCode
              _eapklgLanguage
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsAPKListingsGetResource)
                      mempty
