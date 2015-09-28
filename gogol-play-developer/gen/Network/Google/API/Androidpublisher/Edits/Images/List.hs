{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidpublisher.Edits.Images.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all images for the specified language and image type.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.edits.images.list@.
module Network.Google.API.Androidpublisher.Edits.Images.List
    (
    -- * REST Resource
      EditsImagesListAPI

    -- * Creating a Request
    , editsImagesList'
    , EditsImagesList'

    -- * Request Lenses
    , eilQuotaUser
    , eilPrettyPrint
    , eilPackageName
    , eilUserIp
    , eilImageType
    , eilKey
    , eilLanguage
    , eilOauthToken
    , eilEditId
    , eilFields
    , eilAlt
    ) where

import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

-- | A resource alias for androidpublisher.edits.images.list which the
-- 'EditsImagesList'' request conforms to.
type EditsImagesListAPI =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :>
             Capture "language" Text :>
               Capture "imageType" EditsImagesList'ImageType :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               Get '[JSON] ImagesListResponse

-- | Lists all images for the specified language and image type.
--
-- /See:/ 'editsImagesList'' smart constructor.
data EditsImagesList' = EditsImagesList'
    { _eilQuotaUser   :: !(Maybe Text)
    , _eilPrettyPrint :: !Bool
    , _eilPackageName :: !Text
    , _eilUserIp      :: !(Maybe Text)
    , _eilImageType   :: !EditsImagesList'ImageType
    , _eilKey         :: !(Maybe Text)
    , _eilLanguage    :: !Text
    , _eilOauthToken  :: !(Maybe Text)
    , _eilEditId      :: !Text
    , _eilFields      :: !(Maybe Text)
    , _eilAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsImagesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eilQuotaUser'
--
-- * 'eilPrettyPrint'
--
-- * 'eilPackageName'
--
-- * 'eilUserIp'
--
-- * 'eilImageType'
--
-- * 'eilKey'
--
-- * 'eilLanguage'
--
-- * 'eilOauthToken'
--
-- * 'eilEditId'
--
-- * 'eilFields'
--
-- * 'eilAlt'
editsImagesList'
    :: Text -- ^ 'packageName'
    -> EditsImagesList'ImageType -- ^ 'imageType'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsImagesList'
editsImagesList' pEilPackageName_ pEilImageType_ pEilLanguage_ pEilEditId_ =
    EditsImagesList'
    { _eilQuotaUser = Nothing
    , _eilPrettyPrint = True
    , _eilPackageName = pEilPackageName_
    , _eilUserIp = Nothing
    , _eilImageType = pEilImageType_
    , _eilKey = Nothing
    , _eilLanguage = pEilLanguage_
    , _eilOauthToken = Nothing
    , _eilEditId = pEilEditId_
    , _eilFields = Nothing
    , _eilAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eilQuotaUser :: Lens' EditsImagesList' (Maybe Text)
eilQuotaUser
  = lens _eilQuotaUser (\ s a -> s{_eilQuotaUser = a})

-- | Returns response with indentations and line breaks.
eilPrettyPrint :: Lens' EditsImagesList' Bool
eilPrettyPrint
  = lens _eilPrettyPrint
      (\ s a -> s{_eilPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eilPackageName :: Lens' EditsImagesList' Text
eilPackageName
  = lens _eilPackageName
      (\ s a -> s{_eilPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eilUserIp :: Lens' EditsImagesList' (Maybe Text)
eilUserIp
  = lens _eilUserIp (\ s a -> s{_eilUserIp = a})

eilImageType :: Lens' EditsImagesList' EditsImagesList'ImageType
eilImageType
  = lens _eilImageType (\ s a -> s{_eilImageType = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eilKey :: Lens' EditsImagesList' (Maybe Text)
eilKey = lens _eilKey (\ s a -> s{_eilKey = a})

-- | The language code (a BCP-47 language tag) of the localized listing whose
-- images are to read or modified. For example, to select Austrian German,
-- pass \"de-AT\".
eilLanguage :: Lens' EditsImagesList' Text
eilLanguage
  = lens _eilLanguage (\ s a -> s{_eilLanguage = a})

-- | OAuth 2.0 token for the current user.
eilOauthToken :: Lens' EditsImagesList' (Maybe Text)
eilOauthToken
  = lens _eilOauthToken
      (\ s a -> s{_eilOauthToken = a})

-- | Unique identifier for this edit.
eilEditId :: Lens' EditsImagesList' Text
eilEditId
  = lens _eilEditId (\ s a -> s{_eilEditId = a})

-- | Selector specifying which fields to include in a partial response.
eilFields :: Lens' EditsImagesList' (Maybe Text)
eilFields
  = lens _eilFields (\ s a -> s{_eilFields = a})

-- | Data format for the response.
eilAlt :: Lens' EditsImagesList' Alt
eilAlt = lens _eilAlt (\ s a -> s{_eilAlt = a})

instance GoogleRequest EditsImagesList' where
        type Rs EditsImagesList' = ImagesListResponse
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsImagesList'{..}
          = go _eilQuotaUser (Just _eilPrettyPrint)
              _eilPackageName
              _eilUserIp
              _eilImageType
              _eilKey
              _eilLanguage
              _eilOauthToken
              _eilEditId
              _eilFields
              (Just _eilAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy EditsImagesListAPI)
                      r
                      u
