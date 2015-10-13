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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.APKListings.Deleteall
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes all the APK-specific localized listings for a specified APK.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsAPKListingsDeleteall@.
module Network.Google.Resource.AndroidPublisher.Edits.APKListings.Deleteall
    (
    -- * REST Resource
      EditsAPKListingsDeleteallResource

    -- * Creating a Request
    , editsAPKListingsDeleteall'
    , EditsAPKListingsDeleteall'

    -- * Request Lenses
    , eapkldaPackageName
    , eapkldaAPKVersionCode
    , eapkldaEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsAPKListingsDeleteall@ method which the
-- 'EditsAPKListingsDeleteall'' request conforms to.
type EditsAPKListingsDeleteallResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "apks" :>
             Capture "apkVersionCode" Int32 :>
               "listings" :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes all the APK-specific localized listings for a specified APK.
--
-- /See:/ 'editsAPKListingsDeleteall'' smart constructor.
data EditsAPKListingsDeleteall' = EditsAPKListingsDeleteall'
    { _eapkldaPackageName    :: !Text
    , _eapkldaAPKVersionCode :: !Int32
    , _eapkldaEditId         :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsAPKListingsDeleteall'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eapkldaPackageName'
--
-- * 'eapkldaAPKVersionCode'
--
-- * 'eapkldaEditId'
editsAPKListingsDeleteall'
    :: Text -- ^ 'packageName'
    -> Int32 -- ^ 'apkVersionCode'
    -> Text -- ^ 'editId'
    -> EditsAPKListingsDeleteall'
editsAPKListingsDeleteall' pEapkldaPackageName_ pEapkldaAPKVersionCode_ pEapkldaEditId_ =
    EditsAPKListingsDeleteall'
    { _eapkldaPackageName = pEapkldaPackageName_
    , _eapkldaAPKVersionCode = pEapkldaAPKVersionCode_
    , _eapkldaEditId = pEapkldaEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eapkldaPackageName :: Lens' EditsAPKListingsDeleteall' Text
eapkldaPackageName
  = lens _eapkldaPackageName
      (\ s a -> s{_eapkldaPackageName = a})

-- | The APK version code whose APK-specific listings should be read or
-- modified.
eapkldaAPKVersionCode :: Lens' EditsAPKListingsDeleteall' Int32
eapkldaAPKVersionCode
  = lens _eapkldaAPKVersionCode
      (\ s a -> s{_eapkldaAPKVersionCode = a})

-- | Unique identifier for this edit.
eapkldaEditId :: Lens' EditsAPKListingsDeleteall' Text
eapkldaEditId
  = lens _eapkldaEditId
      (\ s a -> s{_eapkldaEditId = a})

instance GoogleRequest EditsAPKListingsDeleteall'
         where
        type Rs EditsAPKListingsDeleteall' = ()
        requestClient EditsAPKListingsDeleteall'{..}
          = go _eapkldaPackageName _eapkldaEditId
              _eapkldaAPKVersionCode
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsAPKListingsDeleteallResource)
                      mempty
