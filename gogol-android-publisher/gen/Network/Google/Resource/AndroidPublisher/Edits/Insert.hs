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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new edit for an app.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.insert@.
module Network.Google.Resource.AndroidPublisher.Edits.Insert
    (
    -- * REST Resource
      EditsInsertResource

    -- * Creating a Request
    , editsInsert
    , EditsInsert

    -- * Request Lenses
    , eiXgafv
    , eiUploadProtocol
    , eiPackageName
    , eiAccessToken
    , eiUploadType
    , eiPayload
    , eiCallback
    ) where

import Network.Google.AndroidPublisher.Types
import Network.Google.Prelude

-- | A resource alias for @androidpublisher.edits.insert@ method which the
-- 'EditsInsert' request conforms to.
type EditsInsertResource =
     "androidpublisher" :>
       "v3" :>
         "applications" :>
           Capture "packageName" Text :>
             "edits" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AppEdit :> Post '[JSON] AppEdit

-- | Creates a new edit for an app.
--
-- /See:/ 'editsInsert' smart constructor.
data EditsInsert =
  EditsInsert'
    { _eiXgafv :: !(Maybe Xgafv)
    , _eiUploadProtocol :: !(Maybe Text)
    , _eiPackageName :: !Text
    , _eiAccessToken :: !(Maybe Text)
    , _eiUploadType :: !(Maybe Text)
    , _eiPayload :: !AppEdit
    , _eiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EditsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eiXgafv'
--
-- * 'eiUploadProtocol'
--
-- * 'eiPackageName'
--
-- * 'eiAccessToken'
--
-- * 'eiUploadType'
--
-- * 'eiPayload'
--
-- * 'eiCallback'
editsInsert
    :: Text -- ^ 'eiPackageName'
    -> AppEdit -- ^ 'eiPayload'
    -> EditsInsert
editsInsert pEiPackageName_ pEiPayload_ =
  EditsInsert'
    { _eiXgafv = Nothing
    , _eiUploadProtocol = Nothing
    , _eiPackageName = pEiPackageName_
    , _eiAccessToken = Nothing
    , _eiUploadType = Nothing
    , _eiPayload = pEiPayload_
    , _eiCallback = Nothing
    }


-- | V1 error format.
eiXgafv :: Lens' EditsInsert (Maybe Xgafv)
eiXgafv = lens _eiXgafv (\ s a -> s{_eiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eiUploadProtocol :: Lens' EditsInsert (Maybe Text)
eiUploadProtocol
  = lens _eiUploadProtocol
      (\ s a -> s{_eiUploadProtocol = a})

-- | Package name of the app.
eiPackageName :: Lens' EditsInsert Text
eiPackageName
  = lens _eiPackageName
      (\ s a -> s{_eiPackageName = a})

-- | OAuth access token.
eiAccessToken :: Lens' EditsInsert (Maybe Text)
eiAccessToken
  = lens _eiAccessToken
      (\ s a -> s{_eiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eiUploadType :: Lens' EditsInsert (Maybe Text)
eiUploadType
  = lens _eiUploadType (\ s a -> s{_eiUploadType = a})

-- | Multipart request metadata.
eiPayload :: Lens' EditsInsert AppEdit
eiPayload
  = lens _eiPayload (\ s a -> s{_eiPayload = a})

-- | JSONP
eiCallback :: Lens' EditsInsert (Maybe Text)
eiCallback
  = lens _eiCallback (\ s a -> s{_eiCallback = a})

instance GoogleRequest EditsInsert where
        type Rs EditsInsert = AppEdit
        type Scopes EditsInsert =
             '["https://www.googleapis.com/auth/androidpublisher"]
        requestClient EditsInsert'{..}
          = go _eiPackageName _eiXgafv _eiUploadProtocol
              _eiAccessToken
              _eiUploadType
              _eiCallback
              (Just AltJSON)
              _eiPayload
              androidPublisherService
          where go
                  = buildClient (Proxy :: Proxy EditsInsertResource)
                      mempty
