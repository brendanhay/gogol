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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Validate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks that the edit can be successfully committed. The edit\'s changes
-- are not applied to the live app.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.validate@.
module Network.Google.Resource.AndroidPublisher.Edits.Validate
    (
    -- * REST Resource
      EditsValidateResource

    -- * Creating a Request
    , editsValidate
    , EditsValidate

    -- * Request Lenses
    , evPackageName
    , evEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.validate@ method which the
-- 'EditsValidate' request conforms to.
type EditsValidateResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               CaptureMode "editId" "validate" Text :>
                 QueryParam "alt" AltJSON :> Post '[JSON] AppEdit

-- | Checks that the edit can be successfully committed. The edit\'s changes
-- are not applied to the live app.
--
-- /See:/ 'editsValidate' smart constructor.
data EditsValidate =
  EditsValidate'
    { _evPackageName :: !Text
    , _evEditId      :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsValidate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'evPackageName'
--
-- * 'evEditId'
editsValidate
    :: Text -- ^ 'evPackageName'
    -> Text -- ^ 'evEditId'
    -> EditsValidate
editsValidate pEvPackageName_ pEvEditId_ =
  EditsValidate' {_evPackageName = pEvPackageName_, _evEditId = pEvEditId_}


-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
evPackageName :: Lens' EditsValidate Text
evPackageName
  = lens _evPackageName
      (\ s a -> s{_evPackageName = a})

-- | Unique identifier for this edit.
evEditId :: Lens' EditsValidate Text
evEditId = lens _evEditId (\ s a -> s{_evEditId = a})

instance GoogleRequest EditsValidate where
        type Rs EditsValidate = AppEdit
        type Scopes EditsValidate =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsValidate'{..}
          = go _evPackageName _evEditId (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient (Proxy :: Proxy EditsValidateResource)
                      mempty
