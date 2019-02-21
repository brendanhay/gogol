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
-- Module      : Network.Google.Resource.Poly.Users.Assets.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists assets authored by the given user. Only the value \'me\',
-- representing the currently-authenticated user, is supported. May include
-- assets with an access level of PRIVATE or UNLISTED and assets which are
-- All Rights Reserved for the currently-authenticated user.
--
-- /See:/ <https://developers.google.com/poly/ Poly API Reference> for @poly.users.assets.list@.
module Network.Google.Resource.Poly.Users.Assets.List
    (
    -- * REST Resource
      UsersAssetsListResource

    -- * Creating a Request
    , usersAssetsList
    , UsersAssetsList

    -- * Request Lenses
    , ualXgafv
    , ualUploadProtocol
    , ualOrderBy
    , ualAccessToken
    , ualFormat
    , ualUploadType
    , ualVisibility
    , ualName
    , ualPageToken
    , ualPageSize
    , ualCallback
    ) where

import           Network.Google.Poly.Types
import           Network.Google.Prelude

-- | A resource alias for @poly.users.assets.list@ method which the
-- 'UsersAssetsList' request conforms to.
type UsersAssetsListResource =
     "v1" :>
       Capture "name" Text :>
         "assets" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "orderBy" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "format" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "visibility" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListUserAssetsResponse

-- | Lists assets authored by the given user. Only the value \'me\',
-- representing the currently-authenticated user, is supported. May include
-- assets with an access level of PRIVATE or UNLISTED and assets which are
-- All Rights Reserved for the currently-authenticated user.
--
-- /See:/ 'usersAssetsList' smart constructor.
data UsersAssetsList =
  UsersAssetsList'
    { _ualXgafv          :: !(Maybe Xgafv)
    , _ualUploadProtocol :: !(Maybe Text)
    , _ualOrderBy        :: !(Maybe Text)
    , _ualAccessToken    :: !(Maybe Text)
    , _ualFormat         :: !(Maybe Text)
    , _ualUploadType     :: !(Maybe Text)
    , _ualVisibility     :: !(Maybe Text)
    , _ualName           :: !Text
    , _ualPageToken      :: !(Maybe Text)
    , _ualPageSize       :: !(Maybe (Textual Int32))
    , _ualCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersAssetsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ualXgafv'
--
-- * 'ualUploadProtocol'
--
-- * 'ualOrderBy'
--
-- * 'ualAccessToken'
--
-- * 'ualFormat'
--
-- * 'ualUploadType'
--
-- * 'ualVisibility'
--
-- * 'ualName'
--
-- * 'ualPageToken'
--
-- * 'ualPageSize'
--
-- * 'ualCallback'
usersAssetsList
    :: Text -- ^ 'ualName'
    -> UsersAssetsList
usersAssetsList pUalName_ =
  UsersAssetsList'
    { _ualXgafv = Nothing
    , _ualUploadProtocol = Nothing
    , _ualOrderBy = Nothing
    , _ualAccessToken = Nothing
    , _ualFormat = Nothing
    , _ualUploadType = Nothing
    , _ualVisibility = Nothing
    , _ualName = pUalName_
    , _ualPageToken = Nothing
    , _ualPageSize = Nothing
    , _ualCallback = Nothing
    }


-- | V1 error format.
ualXgafv :: Lens' UsersAssetsList (Maybe Xgafv)
ualXgafv = lens _ualXgafv (\ s a -> s{_ualXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ualUploadProtocol :: Lens' UsersAssetsList (Maybe Text)
ualUploadProtocol
  = lens _ualUploadProtocol
      (\ s a -> s{_ualUploadProtocol = a})

-- | Specifies an ordering for assets. Acceptable values are: \`BEST\`,
-- \`NEWEST\`, \`OLDEST\`. Defaults to \`BEST\`, which ranks assets based
-- on a combination of popularity and other features.
ualOrderBy :: Lens' UsersAssetsList (Maybe Text)
ualOrderBy
  = lens _ualOrderBy (\ s a -> s{_ualOrderBy = a})

-- | OAuth access token.
ualAccessToken :: Lens' UsersAssetsList (Maybe Text)
ualAccessToken
  = lens _ualAccessToken
      (\ s a -> s{_ualAccessToken = a})

-- | Return only assets with the matching format. Acceptable values are:
-- \`BLOCKS\`, \`FBX\`, \`GLTF\`, \`GLTF2\`, \`OBJ\`, and \`TILT\`.
ualFormat :: Lens' UsersAssetsList (Maybe Text)
ualFormat
  = lens _ualFormat (\ s a -> s{_ualFormat = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ualUploadType :: Lens' UsersAssetsList (Maybe Text)
ualUploadType
  = lens _ualUploadType
      (\ s a -> s{_ualUploadType = a})

-- | The visibility of the assets to be returned. Defaults to
-- VISIBILITY_UNSPECIFIED which returns all assets.
ualVisibility :: Lens' UsersAssetsList (Maybe Text)
ualVisibility
  = lens _ualVisibility
      (\ s a -> s{_ualVisibility = a})

-- | A valid user id. Currently, only the special value \'me\', representing
-- the currently-authenticated user is supported. To use \'me\', you must
-- pass an OAuth token with the request.
ualName :: Lens' UsersAssetsList Text
ualName = lens _ualName (\ s a -> s{_ualName = a})

-- | Specifies a continuation token from a previous search whose results were
-- split into multiple pages. To get the next page, submit the same request
-- specifying the value from next_page_token.
ualPageToken :: Lens' UsersAssetsList (Maybe Text)
ualPageToken
  = lens _ualPageToken (\ s a -> s{_ualPageToken = a})

-- | The maximum number of assets to be returned. This value must be between
-- \`1\` and \`100\`. Defaults to \`20\`.
ualPageSize :: Lens' UsersAssetsList (Maybe Int32)
ualPageSize
  = lens _ualPageSize (\ s a -> s{_ualPageSize = a}) .
      mapping _Coerce

-- | JSONP
ualCallback :: Lens' UsersAssetsList (Maybe Text)
ualCallback
  = lens _ualCallback (\ s a -> s{_ualCallback = a})

instance GoogleRequest UsersAssetsList where
        type Rs UsersAssetsList = ListUserAssetsResponse
        type Scopes UsersAssetsList = '[]
        requestClient UsersAssetsList'{..}
          = go _ualName _ualXgafv _ualUploadProtocol
              _ualOrderBy
              _ualAccessToken
              _ualFormat
              _ualUploadType
              _ualVisibility
              _ualPageToken
              _ualPageSize
              _ualCallback
              (Just AltJSON)
              polyService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersAssetsListResource)
                      mempty
