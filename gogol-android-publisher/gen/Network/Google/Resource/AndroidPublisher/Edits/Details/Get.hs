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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Details.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetches app details for this edit. This includes the default language
-- and developer support contact information.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.details.get@.
module Network.Google.Resource.AndroidPublisher.Edits.Details.Get
    (
    -- * REST Resource
      EditsDetailsGetResource

    -- * Creating a Request
    , editsDetailsGet
    , EditsDetailsGet

    -- * Request Lenses
    , edgPackageName
    , edgEditId
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.details.get@ method which the
-- 'EditsDetailsGet' request conforms to.
type EditsDetailsGetResource =
     "androidpublisher" :>
       "v2" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 "details" :>
                   QueryParam "alt" AltJSON :> Get '[JSON] AppDetails

-- | Fetches app details for this edit. This includes the default language
-- and developer support contact information.
--
-- /See:/ 'editsDetailsGet' smart constructor.
data EditsDetailsGet = EditsDetailsGet
    { _edgPackageName :: !Text
    , _edgEditId      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsDetailsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edgPackageName'
--
-- * 'edgEditId'
editsDetailsGet
    :: Text -- ^ 'edgPackageName'
    -> Text -- ^ 'edgEditId'
    -> EditsDetailsGet
editsDetailsGet pEdgPackageName_ pEdgEditId_ =
    EditsDetailsGet
    { _edgPackageName = pEdgPackageName_
    , _edgEditId = pEdgEditId_
    }

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
edgPackageName :: Lens' EditsDetailsGet Text
edgPackageName
  = lens _edgPackageName
      (\ s a -> s{_edgPackageName = a})

-- | Unique identifier for this edit.
edgEditId :: Lens' EditsDetailsGet Text
edgEditId
  = lens _edgEditId (\ s a -> s{_edgEditId = a})

instance GoogleRequest EditsDetailsGet where
        type Rs EditsDetailsGet = AppDetails
        requestClient EditsDetailsGet{..}
          = go _edgPackageName _edgEditId (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient
                      (Proxy :: Proxy EditsDetailsGetResource)
                      mempty
