{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Books.Mylibrary.Annotations.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing annotation.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMylibraryAnnotationsUpdate@.
module Network.Google.Resource.Books.Mylibrary.Annotations.Update
    (
    -- * REST Resource
      MylibraryAnnotationsUpdateResource

    -- * Creating a Request
    , mylibraryAnnotationsUpdate'
    , MylibraryAnnotationsUpdate'

    -- * Request Lenses
    , mauQuotaUser
    , mauPrettyPrint
    , mauUserIp
    , mauKey
    , mauAnnotationId
    , mauSource
    , mauOauthToken
    , mauFields
    , mauAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMylibraryAnnotationsUpdate@ which the
-- 'MylibraryAnnotationsUpdate'' request conforms to.
type MylibraryAnnotationsUpdateResource =
     "mylibrary" :>
       "annotations" :>
         Capture "annotationId" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "source" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Put '[JSON] Annotation

-- | Updates an existing annotation.
--
-- /See:/ 'mylibraryAnnotationsUpdate'' smart constructor.
data MylibraryAnnotationsUpdate' = MylibraryAnnotationsUpdate'
    { _mauQuotaUser    :: !(Maybe Text)
    , _mauPrettyPrint  :: !Bool
    , _mauUserIp       :: !(Maybe Text)
    , _mauKey          :: !(Maybe Text)
    , _mauAnnotationId :: !Text
    , _mauSource       :: !(Maybe Text)
    , _mauOauthToken   :: !(Maybe Text)
    , _mauFields       :: !(Maybe Text)
    , _mauAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MylibraryAnnotationsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mauQuotaUser'
--
-- * 'mauPrettyPrint'
--
-- * 'mauUserIp'
--
-- * 'mauKey'
--
-- * 'mauAnnotationId'
--
-- * 'mauSource'
--
-- * 'mauOauthToken'
--
-- * 'mauFields'
--
-- * 'mauAlt'
mylibraryAnnotationsUpdate'
    :: Text -- ^ 'annotationId'
    -> MylibraryAnnotationsUpdate'
mylibraryAnnotationsUpdate' pMauAnnotationId_ =
    MylibraryAnnotationsUpdate'
    { _mauQuotaUser = Nothing
    , _mauPrettyPrint = True
    , _mauUserIp = Nothing
    , _mauKey = Nothing
    , _mauAnnotationId = pMauAnnotationId_
    , _mauSource = Nothing
    , _mauOauthToken = Nothing
    , _mauFields = Nothing
    , _mauAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mauQuotaUser :: Lens' MylibraryAnnotationsUpdate' (Maybe Text)
mauQuotaUser
  = lens _mauQuotaUser (\ s a -> s{_mauQuotaUser = a})

-- | Returns response with indentations and line breaks.
mauPrettyPrint :: Lens' MylibraryAnnotationsUpdate' Bool
mauPrettyPrint
  = lens _mauPrettyPrint
      (\ s a -> s{_mauPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mauUserIp :: Lens' MylibraryAnnotationsUpdate' (Maybe Text)
mauUserIp
  = lens _mauUserIp (\ s a -> s{_mauUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mauKey :: Lens' MylibraryAnnotationsUpdate' (Maybe Text)
mauKey = lens _mauKey (\ s a -> s{_mauKey = a})

-- | The ID for the annotation to update.
mauAnnotationId :: Lens' MylibraryAnnotationsUpdate' Text
mauAnnotationId
  = lens _mauAnnotationId
      (\ s a -> s{_mauAnnotationId = a})

-- | String to identify the originator of this request.
mauSource :: Lens' MylibraryAnnotationsUpdate' (Maybe Text)
mauSource
  = lens _mauSource (\ s a -> s{_mauSource = a})

-- | OAuth 2.0 token for the current user.
mauOauthToken :: Lens' MylibraryAnnotationsUpdate' (Maybe Text)
mauOauthToken
  = lens _mauOauthToken
      (\ s a -> s{_mauOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mauFields :: Lens' MylibraryAnnotationsUpdate' (Maybe Text)
mauFields
  = lens _mauFields (\ s a -> s{_mauFields = a})

-- | Data format for the response.
mauAlt :: Lens' MylibraryAnnotationsUpdate' Alt
mauAlt = lens _mauAlt (\ s a -> s{_mauAlt = a})

instance GoogleRequest MylibraryAnnotationsUpdate'
         where
        type Rs MylibraryAnnotationsUpdate' = Annotation
        request = requestWithRoute defReq booksURL
        requestWithRoute r u MylibraryAnnotationsUpdate'{..}
          = go _mauQuotaUser (Just _mauPrettyPrint) _mauUserIp
              _mauKey
              _mauAnnotationId
              _mauSource
              _mauOauthToken
              _mauFields
              (Just _mauAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MylibraryAnnotationsUpdateResource)
                      r
                      u
