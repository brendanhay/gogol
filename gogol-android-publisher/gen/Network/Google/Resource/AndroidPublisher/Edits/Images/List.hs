{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Images.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all images for the specified language and image type.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsImagesList@.
module Network.Google.Resource.AndroidPublisher.Edits.Images.List
    (
    -- * REST Resource
      EditsImagesListResource

    -- * Creating a Request
    , editsImagesList'
    , EditsImagesList'

    -- * Request Lenses
    , eilQuotaUser
    , eilPrettyPrint
    , eilPackageName
    , eilUserIP
    , eilImageType
    , eilKey
    , eilLanguage
    , eilOAuthToken
    , eilEditId
    , eilFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsImagesList@ which the
-- 'EditsImagesList'' request conforms to.
type EditsImagesListResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :>
             Capture "language" Text :>
               Capture "imageType" EditsImagesListImageType :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ImagesListResponse

-- | Lists all images for the specified language and image type.
--
-- /See:/ 'editsImagesList'' smart constructor.
data EditsImagesList' = EditsImagesList'
    { _eilQuotaUser   :: !(Maybe Text)
    , _eilPrettyPrint :: !Bool
    , _eilPackageName :: !Text
    , _eilUserIP      :: !(Maybe Text)
    , _eilImageType   :: !EditsImagesListImageType
    , _eilKey         :: !(Maybe Key)
    , _eilLanguage    :: !Text
    , _eilOAuthToken  :: !(Maybe OAuthToken)
    , _eilEditId      :: !Text
    , _eilFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'eilUserIP'
--
-- * 'eilImageType'
--
-- * 'eilKey'
--
-- * 'eilLanguage'
--
-- * 'eilOAuthToken'
--
-- * 'eilEditId'
--
-- * 'eilFields'
editsImagesList'
    :: Text -- ^ 'packageName'
    -> EditsImagesListImageType -- ^ 'imageType'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsImagesList'
editsImagesList' pEilPackageName_ pEilImageType_ pEilLanguage_ pEilEditId_ =
    EditsImagesList'
    { _eilQuotaUser = Nothing
    , _eilPrettyPrint = True
    , _eilPackageName = pEilPackageName_
    , _eilUserIP = Nothing
    , _eilImageType = pEilImageType_
    , _eilKey = Nothing
    , _eilLanguage = pEilLanguage_
    , _eilOAuthToken = Nothing
    , _eilEditId = pEilEditId_
    , _eilFields = Nothing
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
eilUserIP :: Lens' EditsImagesList' (Maybe Text)
eilUserIP
  = lens _eilUserIP (\ s a -> s{_eilUserIP = a})

eilImageType :: Lens' EditsImagesList' EditsImagesListImageType
eilImageType
  = lens _eilImageType (\ s a -> s{_eilImageType = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eilKey :: Lens' EditsImagesList' (Maybe Key)
eilKey = lens _eilKey (\ s a -> s{_eilKey = a})

-- | The language code (a BCP-47 language tag) of the localized listing whose
-- images are to read or modified. For example, to select Austrian German,
-- pass \"de-AT\".
eilLanguage :: Lens' EditsImagesList' Text
eilLanguage
  = lens _eilLanguage (\ s a -> s{_eilLanguage = a})

-- | OAuth 2.0 token for the current user.
eilOAuthToken :: Lens' EditsImagesList' (Maybe OAuthToken)
eilOAuthToken
  = lens _eilOAuthToken
      (\ s a -> s{_eilOAuthToken = a})

-- | Unique identifier for this edit.
eilEditId :: Lens' EditsImagesList' Text
eilEditId
  = lens _eilEditId (\ s a -> s{_eilEditId = a})

-- | Selector specifying which fields to include in a partial response.
eilFields :: Lens' EditsImagesList' (Maybe Text)
eilFields
  = lens _eilFields (\ s a -> s{_eilFields = a})

instance GoogleAuth EditsImagesList' where
        authKey = eilKey . _Just
        authToken = eilOAuthToken . _Just

instance GoogleRequest EditsImagesList' where
        type Rs EditsImagesList' = ImagesListResponse
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u EditsImagesList'{..}
          = go _eilPackageName _eilEditId _eilLanguage
              _eilImageType
              _eilQuotaUser
              (Just _eilPrettyPrint)
              _eilUserIP
              _eilFields
              _eilKey
              _eilOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsImagesListResource)
                      r
                      u
