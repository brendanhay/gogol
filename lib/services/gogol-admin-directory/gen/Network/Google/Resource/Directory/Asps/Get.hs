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
-- Module      : Network.Google.Resource.Directory.Asps.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about an ASP issued by a user.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.asps.get@.
module Network.Google.Resource.Directory.Asps.Get
    (
    -- * REST Resource
      AspsGetResource

    -- * Creating a Request
    , aspsGet
    , AspsGet

    -- * Request Lenses
    , agXgafv
    , agUploadProtocol
    , agCodeId
    , agAccessToken
    , agUploadType
    , agUserKey
    , agCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.asps.get@ method which the
-- 'AspsGet' request conforms to.
type AspsGetResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "asps" :>
                 Capture "codeId" (Textual Int32) :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Asp

-- | Gets information about an ASP issued by a user.
--
-- /See:/ 'aspsGet' smart constructor.
data AspsGet =
  AspsGet'
    { _agXgafv :: !(Maybe Xgafv)
    , _agUploadProtocol :: !(Maybe Text)
    , _agCodeId :: !(Textual Int32)
    , _agAccessToken :: !(Maybe Text)
    , _agUploadType :: !(Maybe Text)
    , _agUserKey :: !Text
    , _agCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AspsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agXgafv'
--
-- * 'agUploadProtocol'
--
-- * 'agCodeId'
--
-- * 'agAccessToken'
--
-- * 'agUploadType'
--
-- * 'agUserKey'
--
-- * 'agCallback'
aspsGet
    :: Int32 -- ^ 'agCodeId'
    -> Text -- ^ 'agUserKey'
    -> AspsGet
aspsGet pAgCodeId_ pAgUserKey_ =
  AspsGet'
    { _agXgafv = Nothing
    , _agUploadProtocol = Nothing
    , _agCodeId = _Coerce # pAgCodeId_
    , _agAccessToken = Nothing
    , _agUploadType = Nothing
    , _agUserKey = pAgUserKey_
    , _agCallback = Nothing
    }


-- | V1 error format.
agXgafv :: Lens' AspsGet (Maybe Xgafv)
agXgafv = lens _agXgafv (\ s a -> s{_agXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
agUploadProtocol :: Lens' AspsGet (Maybe Text)
agUploadProtocol
  = lens _agUploadProtocol
      (\ s a -> s{_agUploadProtocol = a})

-- | The unique ID of the ASP.
agCodeId :: Lens' AspsGet Int32
agCodeId
  = lens _agCodeId (\ s a -> s{_agCodeId = a}) .
      _Coerce

-- | OAuth access token.
agAccessToken :: Lens' AspsGet (Maybe Text)
agAccessToken
  = lens _agAccessToken
      (\ s a -> s{_agAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
agUploadType :: Lens' AspsGet (Maybe Text)
agUploadType
  = lens _agUploadType (\ s a -> s{_agUploadType = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
agUserKey :: Lens' AspsGet Text
agUserKey
  = lens _agUserKey (\ s a -> s{_agUserKey = a})

-- | JSONP
agCallback :: Lens' AspsGet (Maybe Text)
agCallback
  = lens _agCallback (\ s a -> s{_agCallback = a})

instance GoogleRequest AspsGet where
        type Rs AspsGet = Asp
        type Scopes AspsGet =
             '["https://www.googleapis.com/auth/admin.directory.user.security"]
        requestClient AspsGet'{..}
          = go _agUserKey _agCodeId _agXgafv _agUploadProtocol
              _agAccessToken
              _agUploadType
              _agCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy AspsGetResource) mempty
