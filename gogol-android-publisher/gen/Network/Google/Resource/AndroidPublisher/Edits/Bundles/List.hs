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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Bundles.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.bundles.list@.
module Network.Google.Resource.AndroidPublisher.Edits.Bundles.List
    (
    -- * REST Resource
      EditsBundlesListResource

    -- * Creating a Request
    , editsBundlesList
    , EditsBundlesList

    -- * Request Lenses
    , eblPackageName
    , eblEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.bundles.list@ method which the
-- 'EditsBundlesList' request conforms to.
type EditsBundlesListResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "bundles" :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] BundlesListResponse

--
-- /See:/ 'editsBundlesList' smart constructor.
data EditsBundlesList =
  EditsBundlesList'
    { _eblPackageName :: !Text
    , _eblEditId      :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsBundlesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eblPackageName'
--
-- * 'eblEditId'
editsBundlesList
    :: Text -- ^ 'eblPackageName'
    -> Text -- ^ 'eblEditId'
    -> EditsBundlesList
editsBundlesList pEblPackageName_ pEblEditId_ =
  EditsBundlesList'
    {_eblPackageName = pEblPackageName_, _eblEditId = pEblEditId_}


-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eblPackageName :: Lens' EditsBundlesList Text
eblPackageName
  = lens _eblPackageName
      (\ s a -> s{_eblPackageName = a})

-- | Unique identifier for this edit.
eblEditId :: Lens' EditsBundlesList Text
eblEditId
  = lens _eblEditId (\ s a -> s{_eblEditId = a})

instance GoogleRequest EditsBundlesList where
        type Rs EditsBundlesList = BundlesListResponse
        type Scopes EditsBundlesList =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsBundlesList'{..}
          = go _eblPackageName _eblEditId (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsBundlesListResource)
                      mempty
