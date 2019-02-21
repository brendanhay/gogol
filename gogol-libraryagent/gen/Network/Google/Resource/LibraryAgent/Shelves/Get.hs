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
-- Module      : Network.Google.Resource.LibraryAgent.Shelves.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a shelf. Returns NOT_FOUND if the shelf does not exist.
--
-- /See:/ <https://cloud.google.com/docs/quota Library Agent API Reference> for @libraryagent.shelves.get@.
module Network.Google.Resource.LibraryAgent.Shelves.Get
    (
    -- * REST Resource
      ShelvesGetResource

    -- * Creating a Request
    , shelvesGet
    , ShelvesGet

    -- * Request Lenses
    , sgXgafv
    , sgUploadProtocol
    , sgAccessToken
    , sgUploadType
    , sgName
    , sgCallback
    ) where

import           Network.Google.LibraryAgent.Types
import           Network.Google.Prelude

-- | A resource alias for @libraryagent.shelves.get@ method which the
-- 'ShelvesGet' request conforms to.
type ShelvesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GoogleExampleLibraryagentV1Shelf

-- | Gets a shelf. Returns NOT_FOUND if the shelf does not exist.
--
-- /See:/ 'shelvesGet' smart constructor.
data ShelvesGet =
  ShelvesGet'
    { _sgXgafv          :: !(Maybe Xgafv)
    , _sgUploadProtocol :: !(Maybe Text)
    , _sgAccessToken    :: !(Maybe Text)
    , _sgUploadType     :: !(Maybe Text)
    , _sgName           :: !Text
    , _sgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ShelvesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgXgafv'
--
-- * 'sgUploadProtocol'
--
-- * 'sgAccessToken'
--
-- * 'sgUploadType'
--
-- * 'sgName'
--
-- * 'sgCallback'
shelvesGet
    :: Text -- ^ 'sgName'
    -> ShelvesGet
shelvesGet pSgName_ =
  ShelvesGet'
    { _sgXgafv = Nothing
    , _sgUploadProtocol = Nothing
    , _sgAccessToken = Nothing
    , _sgUploadType = Nothing
    , _sgName = pSgName_
    , _sgCallback = Nothing
    }


-- | V1 error format.
sgXgafv :: Lens' ShelvesGet (Maybe Xgafv)
sgXgafv = lens _sgXgafv (\ s a -> s{_sgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sgUploadProtocol :: Lens' ShelvesGet (Maybe Text)
sgUploadProtocol
  = lens _sgUploadProtocol
      (\ s a -> s{_sgUploadProtocol = a})

-- | OAuth access token.
sgAccessToken :: Lens' ShelvesGet (Maybe Text)
sgAccessToken
  = lens _sgAccessToken
      (\ s a -> s{_sgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sgUploadType :: Lens' ShelvesGet (Maybe Text)
sgUploadType
  = lens _sgUploadType (\ s a -> s{_sgUploadType = a})

-- | The name of the shelf to retrieve.
sgName :: Lens' ShelvesGet Text
sgName = lens _sgName (\ s a -> s{_sgName = a})

-- | JSONP
sgCallback :: Lens' ShelvesGet (Maybe Text)
sgCallback
  = lens _sgCallback (\ s a -> s{_sgCallback = a})

instance GoogleRequest ShelvesGet where
        type Rs ShelvesGet = GoogleExampleLibraryagentV1Shelf
        type Scopes ShelvesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ShelvesGet'{..}
          = go _sgName _sgXgafv _sgUploadProtocol
              _sgAccessToken
              _sgUploadType
              _sgCallback
              (Just AltJSON)
              libraryAgentService
          where go
                  = buildClient (Proxy :: Proxy ShelvesGetResource)
                      mempty
