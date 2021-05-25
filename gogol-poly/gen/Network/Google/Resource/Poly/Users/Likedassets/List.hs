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
-- Module      : Network.Google.Resource.Poly.Users.Likedassets.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists assets that the user has liked. Only the value \'me\',
-- representing the currently-authenticated user, is supported. May include
-- assets with an access level of UNLISTED.
--
-- /See:/ <https://developers.google.com/poly/ Poly API Reference> for @poly.users.likedassets.list@.
module Network.Google.Resource.Poly.Users.Likedassets.List
    (
    -- * REST Resource
      UsersLikedassetsListResource

    -- * Creating a Request
    , usersLikedassetsList
    , UsersLikedassetsList

    -- * Request Lenses
    , ullXgafv
    , ullUploadProtocol
    , ullOrderBy
    , ullAccessToken
    , ullFormat
    , ullUploadType
    , ullName
    , ullPageToken
    , ullPageSize
    , ullCallback
    ) where

import Network.Google.Poly.Types
import Network.Google.Prelude

-- | A resource alias for @poly.users.likedassets.list@ method which the
-- 'UsersLikedassetsList' request conforms to.
type UsersLikedassetsListResource =
     "v1" :>
       Capture "name" Text :>
         "likedassets" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "orderBy" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "format" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListLikedAssetsResponse

-- | Lists assets that the user has liked. Only the value \'me\',
-- representing the currently-authenticated user, is supported. May include
-- assets with an access level of UNLISTED.
--
-- /See:/ 'usersLikedassetsList' smart constructor.
data UsersLikedassetsList =
  UsersLikedassetsList'
    { _ullXgafv :: !(Maybe Xgafv)
    , _ullUploadProtocol :: !(Maybe Text)
    , _ullOrderBy :: !(Maybe Text)
    , _ullAccessToken :: !(Maybe Text)
    , _ullFormat :: !(Maybe Text)
    , _ullUploadType :: !(Maybe Text)
    , _ullName :: !Text
    , _ullPageToken :: !(Maybe Text)
    , _ullPageSize :: !(Maybe (Textual Int32))
    , _ullCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UsersLikedassetsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ullXgafv'
--
-- * 'ullUploadProtocol'
--
-- * 'ullOrderBy'
--
-- * 'ullAccessToken'
--
-- * 'ullFormat'
--
-- * 'ullUploadType'
--
-- * 'ullName'
--
-- * 'ullPageToken'
--
-- * 'ullPageSize'
--
-- * 'ullCallback'
usersLikedassetsList
    :: Text -- ^ 'ullName'
    -> UsersLikedassetsList
usersLikedassetsList pUllName_ =
  UsersLikedassetsList'
    { _ullXgafv = Nothing
    , _ullUploadProtocol = Nothing
    , _ullOrderBy = Nothing
    , _ullAccessToken = Nothing
    , _ullFormat = Nothing
    , _ullUploadType = Nothing
    , _ullName = pUllName_
    , _ullPageToken = Nothing
    , _ullPageSize = Nothing
    , _ullCallback = Nothing
    }


-- | V1 error format.
ullXgafv :: Lens' UsersLikedassetsList (Maybe Xgafv)
ullXgafv = lens _ullXgafv (\ s a -> s{_ullXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ullUploadProtocol :: Lens' UsersLikedassetsList (Maybe Text)
ullUploadProtocol
  = lens _ullUploadProtocol
      (\ s a -> s{_ullUploadProtocol = a})

-- | Specifies an ordering for assets. Acceptable values are: \`BEST\`,
-- \`NEWEST\`, \`OLDEST\`, \'LIKED_TIME\'. Defaults to \`LIKED_TIME\`,
-- which ranks assets based on how recently they were liked.
ullOrderBy :: Lens' UsersLikedassetsList (Maybe Text)
ullOrderBy
  = lens _ullOrderBy (\ s a -> s{_ullOrderBy = a})

-- | OAuth access token.
ullAccessToken :: Lens' UsersLikedassetsList (Maybe Text)
ullAccessToken
  = lens _ullAccessToken
      (\ s a -> s{_ullAccessToken = a})

-- | Return only assets with the matching format. Acceptable values are:
-- \`BLOCKS\`, \`FBX\`, \`GLTF\`, \`GLTF2\`, \`OBJ\`, \`TILT\`.
ullFormat :: Lens' UsersLikedassetsList (Maybe Text)
ullFormat
  = lens _ullFormat (\ s a -> s{_ullFormat = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ullUploadType :: Lens' UsersLikedassetsList (Maybe Text)
ullUploadType
  = lens _ullUploadType
      (\ s a -> s{_ullUploadType = a})

-- | A valid user id. Currently, only the special value \'me\', representing
-- the currently-authenticated user is supported. To use \'me\', you must
-- pass an OAuth token with the request.
ullName :: Lens' UsersLikedassetsList Text
ullName = lens _ullName (\ s a -> s{_ullName = a})

-- | Specifies a continuation token from a previous search whose results were
-- split into multiple pages. To get the next page, submit the same request
-- specifying the value from next_page_token.
ullPageToken :: Lens' UsersLikedassetsList (Maybe Text)
ullPageToken
  = lens _ullPageToken (\ s a -> s{_ullPageToken = a})

-- | The maximum number of assets to be returned. This value must be between
-- \`1\` and \`100\`. Defaults to \`20\`.
ullPageSize :: Lens' UsersLikedassetsList (Maybe Int32)
ullPageSize
  = lens _ullPageSize (\ s a -> s{_ullPageSize = a}) .
      mapping _Coerce

-- | JSONP
ullCallback :: Lens' UsersLikedassetsList (Maybe Text)
ullCallback
  = lens _ullCallback (\ s a -> s{_ullCallback = a})

instance GoogleRequest UsersLikedassetsList where
        type Rs UsersLikedassetsList =
             ListLikedAssetsResponse
        type Scopes UsersLikedassetsList = '[]
        requestClient UsersLikedassetsList'{..}
          = go _ullName _ullXgafv _ullUploadProtocol
              _ullOrderBy
              _ullAccessToken
              _ullFormat
              _ullUploadType
              _ullPageToken
              _ullPageSize
              _ullCallback
              (Just AltJSON)
              polyService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersLikedassetsListResource)
                      mempty
