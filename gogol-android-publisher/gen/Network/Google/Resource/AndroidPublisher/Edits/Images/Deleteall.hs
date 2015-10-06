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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Images.Deleteall
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes all images for the specified language and image type.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsImagesDeleteall@.
module Network.Google.Resource.AndroidPublisher.Edits.Images.Deleteall
    (
    -- * REST Resource
      EditsImagesDeleteallResource

    -- * Creating a Request
    , editsImagesDeleteall'
    , EditsImagesDeleteall'

    -- * Request Lenses
    , eidiQuotaUser
    , eidiPrettyPrint
    , eidiPackageName
    , eidiUserIP
    , eidiImageType
    , eidiKey
    , eidiLanguage
    , eidiOAuthToken
    , eidiEditId
    , eidiFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsImagesDeleteall@ which the
-- 'EditsImagesDeleteall'' request conforms to.
type EditsImagesDeleteallResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "listings" :>
             Capture "language" Text :>
               Capture "imageType" EditsImagesDeleteallImageType :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Delete '[JSON] ImagesDeleteAllResponse

-- | Deletes all images for the specified language and image type.
--
-- /See:/ 'editsImagesDeleteall'' smart constructor.
data EditsImagesDeleteall' = EditsImagesDeleteall'
    { _eidiQuotaUser   :: !(Maybe Text)
    , _eidiPrettyPrint :: !Bool
    , _eidiPackageName :: !Text
    , _eidiUserIP      :: !(Maybe Text)
    , _eidiImageType   :: !EditsImagesDeleteallImageType
    , _eidiKey         :: !(Maybe AuthKey)
    , _eidiLanguage    :: !Text
    , _eidiOAuthToken  :: !(Maybe OAuthToken)
    , _eidiEditId      :: !Text
    , _eidiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsImagesDeleteall'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eidiQuotaUser'
--
-- * 'eidiPrettyPrint'
--
-- * 'eidiPackageName'
--
-- * 'eidiUserIP'
--
-- * 'eidiImageType'
--
-- * 'eidiKey'
--
-- * 'eidiLanguage'
--
-- * 'eidiOAuthToken'
--
-- * 'eidiEditId'
--
-- * 'eidiFields'
editsImagesDeleteall'
    :: Text -- ^ 'packageName'
    -> EditsImagesDeleteallImageType -- ^ 'imageType'
    -> Text -- ^ 'language'
    -> Text -- ^ 'editId'
    -> EditsImagesDeleteall'
editsImagesDeleteall' pEidiPackageName_ pEidiImageType_ pEidiLanguage_ pEidiEditId_ =
    EditsImagesDeleteall'
    { _eidiQuotaUser = Nothing
    , _eidiPrettyPrint = True
    , _eidiPackageName = pEidiPackageName_
    , _eidiUserIP = Nothing
    , _eidiImageType = pEidiImageType_
    , _eidiKey = Nothing
    , _eidiLanguage = pEidiLanguage_
    , _eidiOAuthToken = Nothing
    , _eidiEditId = pEidiEditId_
    , _eidiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
eidiQuotaUser :: Lens' EditsImagesDeleteall' (Maybe Text)
eidiQuotaUser
  = lens _eidiQuotaUser
      (\ s a -> s{_eidiQuotaUser = a})

-- | Returns response with indentations and line breaks.
eidiPrettyPrint :: Lens' EditsImagesDeleteall' Bool
eidiPrettyPrint
  = lens _eidiPrettyPrint
      (\ s a -> s{_eidiPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
eidiPackageName :: Lens' EditsImagesDeleteall' Text
eidiPackageName
  = lens _eidiPackageName
      (\ s a -> s{_eidiPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
eidiUserIP :: Lens' EditsImagesDeleteall' (Maybe Text)
eidiUserIP
  = lens _eidiUserIP (\ s a -> s{_eidiUserIP = a})

eidiImageType :: Lens' EditsImagesDeleteall' EditsImagesDeleteallImageType
eidiImageType
  = lens _eidiImageType
      (\ s a -> s{_eidiImageType = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
eidiKey :: Lens' EditsImagesDeleteall' (Maybe AuthKey)
eidiKey = lens _eidiKey (\ s a -> s{_eidiKey = a})

-- | The language code (a BCP-47 language tag) of the localized listing whose
-- images are to read or modified. For example, to select Austrian German,
-- pass \"de-AT\".
eidiLanguage :: Lens' EditsImagesDeleteall' Text
eidiLanguage
  = lens _eidiLanguage (\ s a -> s{_eidiLanguage = a})

-- | OAuth 2.0 token for the current user.
eidiOAuthToken :: Lens' EditsImagesDeleteall' (Maybe OAuthToken)
eidiOAuthToken
  = lens _eidiOAuthToken
      (\ s a -> s{_eidiOAuthToken = a})

-- | Unique identifier for this edit.
eidiEditId :: Lens' EditsImagesDeleteall' Text
eidiEditId
  = lens _eidiEditId (\ s a -> s{_eidiEditId = a})

-- | Selector specifying which fields to include in a partial response.
eidiFields :: Lens' EditsImagesDeleteall' (Maybe Text)
eidiFields
  = lens _eidiFields (\ s a -> s{_eidiFields = a})

instance GoogleAuth EditsImagesDeleteall' where
        _AuthKey = eidiKey . _Just
        _AuthToken = eidiOAuthToken . _Just

instance GoogleRequest EditsImagesDeleteall' where
        type Rs EditsImagesDeleteall' =
             ImagesDeleteAllResponse
        request = requestWith androidPublisherRequest
        requestWith rq EditsImagesDeleteall'{..}
          = go _eidiPackageName _eidiEditId _eidiLanguage
              _eidiImageType
              _eidiQuotaUser
              (Just _eidiPrettyPrint)
              _eidiUserIP
              _eidiFields
              _eidiKey
              _eidiOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy EditsImagesDeleteallResource)
                      rq
