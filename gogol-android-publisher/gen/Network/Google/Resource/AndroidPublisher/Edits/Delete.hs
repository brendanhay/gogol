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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an app edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.delete@.
module Network.Google.Resource.AndroidPublisher.Edits.Delete
    (
    -- * REST Resource
      EditsDeleteResource

    -- * Creating a Request
    , editsDelete
    , EditsDelete

    -- * Request Lenses
    , edXgafv
    , edUploadProtocol
    , edPackageName
    , edAccessToken
    , edUploadType
    , edEditId
    , edCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.delete@ method which the
-- 'EditsDelete' request conforms to.
type EditsDeleteResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               Capture "editId" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an app edit.
--
-- /See:/ 'editsDelete' smart constructor.
data EditsDelete =
  EditsDelete'
    { _edXgafv :: !(Maybe Xgafv)
    , _edUploadProtocol :: !(Maybe Text)
    , _edPackageName :: !Text
    , _edAccessToken :: !(Maybe Text)
    , _edUploadType :: !(Maybe Text)
    , _edEditId :: !Text
    , _edCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'edXgafv'
--
-- * 'edUploadProtocol'
--
-- * 'edPackageName'
--
-- * 'edAccessToken'
--
-- * 'edUploadType'
--
-- * 'edEditId'
--
-- * 'edCallback'
editsDelete
    :: Text -- ^ 'edPackageName'
    -> Text -- ^ 'edEditId'
    -> EditsDelete
editsDelete pEdPackageName_ pEdEditId_ =
  EditsDelete'
    { _edXgafv = Nothing
    , _edUploadProtocol = Nothing
    , _edPackageName = pEdPackageName_
    , _edAccessToken = Nothing
    , _edUploadType = Nothing
    , _edEditId = pEdEditId_
    , _edCallback = Nothing
    }


-- | V1 error format.
edXgafv :: Lens' EditsDelete (Maybe Xgafv)
edXgafv = lens _edXgafv (\ s a -> s{_edXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
edUploadProtocol :: Lens' EditsDelete (Maybe Text)
edUploadProtocol
  = lens _edUploadProtocol
      (\ s a -> s{_edUploadProtocol = a})

-- | Package name of the app.
edPackageName :: Lens' EditsDelete Text
edPackageName
  = lens _edPackageName
      (\ s a -> s{_edPackageName = a})

-- | OAuth access token.
edAccessToken :: Lens' EditsDelete (Maybe Text)
edAccessToken
  = lens _edAccessToken
      (\ s a -> s{_edAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
edUploadType :: Lens' EditsDelete (Maybe Text)
edUploadType
  = lens _edUploadType (\ s a -> s{_edUploadType = a})

-- | Identifier of the edit.
edEditId :: Lens' EditsDelete Text
edEditId = lens _edEditId (\ s a -> s{_edEditId = a})

-- | JSONP
edCallback :: Lens' EditsDelete (Maybe Text)
edCallback
  = lens _edCallback (\ s a -> s{_edCallback = a})

instance GoogleRequest EditsDelete where
        type Rs EditsDelete = ()
        type Scopes EditsDelete =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsDelete'{..}
          = go _edPackageName _edEditId _edXgafv
              _edUploadProtocol
              _edAccessToken
              _edUploadType
              _edCallback
              (Just AltJSON)
              androidPublisherService
          where go
                  = buildClient (Proxy :: Proxy EditsDeleteResource)
                      mempty
