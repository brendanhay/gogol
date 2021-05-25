{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.OSLogin.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.OSLogin.Types.Product where

import Network.Google.OSLogin.Types.Sum
import Network.Google.Prelude

-- | A map from SSH public key fingerprint to the associated key object.
--
-- /See:/ 'loginProFileSSHPublicKeys' smart constructor.
newtype LoginProFileSSHPublicKeys =
  LoginProFileSSHPublicKeys'
    { _lpfspkAddtional :: HashMap Text SSHPublicKey
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LoginProFileSSHPublicKeys' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpfspkAddtional'
loginProFileSSHPublicKeys
    :: HashMap Text SSHPublicKey -- ^ 'lpfspkAddtional'
    -> LoginProFileSSHPublicKeys
loginProFileSSHPublicKeys pLpfspkAddtional_ =
  LoginProFileSSHPublicKeys' {_lpfspkAddtional = _Coerce # pLpfspkAddtional_}


lpfspkAddtional :: Lens' LoginProFileSSHPublicKeys (HashMap Text SSHPublicKey)
lpfspkAddtional
  = lens _lpfspkAddtional
      (\ s a -> s{_lpfspkAddtional = a})
      . _Coerce

instance FromJSON LoginProFileSSHPublicKeys where
        parseJSON
          = withObject "LoginProFileSSHPublicKeys"
              (\ o ->
                 LoginProFileSSHPublicKeys' <$> (parseJSONObject o))

instance ToJSON LoginProFileSSHPublicKeys where
        toJSON = toJSON . _lpfspkAddtional

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
  Empty'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'


instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | The user profile information used for logging in to a virtual machine on
-- Google Compute Engine.
--
-- /See:/ 'loginProFile' smart constructor.
data LoginProFile =
  LoginProFile'
    { _lpfPosixAccounts :: !(Maybe [PosixAccount])
    , _lpfSSHPublicKeys :: !(Maybe LoginProFileSSHPublicKeys)
    , _lpfName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LoginProFile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpfPosixAccounts'
--
-- * 'lpfSSHPublicKeys'
--
-- * 'lpfName'
loginProFile
    :: LoginProFile
loginProFile =
  LoginProFile'
    { _lpfPosixAccounts = Nothing
    , _lpfSSHPublicKeys = Nothing
    , _lpfName = Nothing
    }


-- | The list of POSIX accounts associated with the user.
lpfPosixAccounts :: Lens' LoginProFile [PosixAccount]
lpfPosixAccounts
  = lens _lpfPosixAccounts
      (\ s a -> s{_lpfPosixAccounts = a})
      . _Default
      . _Coerce

-- | A map from SSH public key fingerprint to the associated key object.
lpfSSHPublicKeys :: Lens' LoginProFile (Maybe LoginProFileSSHPublicKeys)
lpfSSHPublicKeys
  = lens _lpfSSHPublicKeys
      (\ s a -> s{_lpfSSHPublicKeys = a})

-- | Required. A unique user ID.
lpfName :: Lens' LoginProFile (Maybe Text)
lpfName = lens _lpfName (\ s a -> s{_lpfName = a})

instance FromJSON LoginProFile where
        parseJSON
          = withObject "LoginProFile"
              (\ o ->
                 LoginProFile' <$>
                   (o .:? "posixAccounts" .!= mempty) <*>
                     (o .:? "sshPublicKeys")
                     <*> (o .:? "name"))

instance ToJSON LoginProFile where
        toJSON LoginProFile'{..}
          = object
              (catMaybes
                 [("posixAccounts" .=) <$> _lpfPosixAccounts,
                  ("sshPublicKeys" .=) <$> _lpfSSHPublicKeys,
                  ("name" .=) <$> _lpfName])

-- | A response message for importing an SSH public key.
--
-- /See:/ 'importSSHPublicKeyResponse' smart constructor.
data ImportSSHPublicKeyResponse =
  ImportSSHPublicKeyResponse'
    { _ispkrLoginProFile :: !(Maybe LoginProFile)
    , _ispkrDetails :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImportSSHPublicKeyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ispkrLoginProFile'
--
-- * 'ispkrDetails'
importSSHPublicKeyResponse
    :: ImportSSHPublicKeyResponse
importSSHPublicKeyResponse =
  ImportSSHPublicKeyResponse'
    {_ispkrLoginProFile = Nothing, _ispkrDetails = Nothing}


-- | The login profile information for the user.
ispkrLoginProFile :: Lens' ImportSSHPublicKeyResponse (Maybe LoginProFile)
ispkrLoginProFile
  = lens _ispkrLoginProFile
      (\ s a -> s{_ispkrLoginProFile = a})

-- | Detailed information about import results.
ispkrDetails :: Lens' ImportSSHPublicKeyResponse (Maybe Text)
ispkrDetails
  = lens _ispkrDetails (\ s a -> s{_ispkrDetails = a})

instance FromJSON ImportSSHPublicKeyResponse where
        parseJSON
          = withObject "ImportSSHPublicKeyResponse"
              (\ o ->
                 ImportSSHPublicKeyResponse' <$>
                   (o .:? "loginProfile") <*> (o .:? "details"))

instance ToJSON ImportSSHPublicKeyResponse where
        toJSON ImportSSHPublicKeyResponse'{..}
          = object
              (catMaybes
                 [("loginProfile" .=) <$> _ispkrLoginProFile,
                  ("details" .=) <$> _ispkrDetails])

-- | The SSH public key information associated with a Google account.
--
-- /See:/ 'sshPublicKey' smart constructor.
data SSHPublicKey =
  SSHPublicKey'
    { _spkFingerprint :: !(Maybe Text)
    , _spkKey :: !(Maybe Text)
    , _spkName :: !(Maybe Text)
    , _spkExpirationTimeUsec :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SSHPublicKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spkFingerprint'
--
-- * 'spkKey'
--
-- * 'spkName'
--
-- * 'spkExpirationTimeUsec'
sshPublicKey
    :: SSHPublicKey
sshPublicKey =
  SSHPublicKey'
    { _spkFingerprint = Nothing
    , _spkKey = Nothing
    , _spkName = Nothing
    , _spkExpirationTimeUsec = Nothing
    }


-- | Output only. The SHA-256 fingerprint of the SSH public key.
spkFingerprint :: Lens' SSHPublicKey (Maybe Text)
spkFingerprint
  = lens _spkFingerprint
      (\ s a -> s{_spkFingerprint = a})

-- | Public key text in SSH format, defined by RFC4253 section 6.6.
spkKey :: Lens' SSHPublicKey (Maybe Text)
spkKey = lens _spkKey (\ s a -> s{_spkKey = a})

-- | Output only. The canonical resource name.
spkName :: Lens' SSHPublicKey (Maybe Text)
spkName = lens _spkName (\ s a -> s{_spkName = a})

-- | An expiration time in microseconds since epoch.
spkExpirationTimeUsec :: Lens' SSHPublicKey (Maybe Int64)
spkExpirationTimeUsec
  = lens _spkExpirationTimeUsec
      (\ s a -> s{_spkExpirationTimeUsec = a})
      . mapping _Coerce

instance FromJSON SSHPublicKey where
        parseJSON
          = withObject "SSHPublicKey"
              (\ o ->
                 SSHPublicKey' <$>
                   (o .:? "fingerprint") <*> (o .:? "key") <*>
                     (o .:? "name")
                     <*> (o .:? "expirationTimeUsec"))

instance ToJSON SSHPublicKey where
        toJSON SSHPublicKey'{..}
          = object
              (catMaybes
                 [("fingerprint" .=) <$> _spkFingerprint,
                  ("key" .=) <$> _spkKey, ("name" .=) <$> _spkName,
                  ("expirationTimeUsec" .=) <$>
                    _spkExpirationTimeUsec])

-- | The POSIX account information associated with a Google account.
--
-- /See:/ 'posixAccount' smart constructor.
data PosixAccount =
  PosixAccount'
    { _paGecos :: !(Maybe Text)
    , _paUid :: !(Maybe (Textual Int64))
    , _paUsername :: !(Maybe Text)
    , _paShell :: !(Maybe Text)
    , _paPrimary :: !(Maybe Bool)
    , _paAccountId :: !(Maybe Text)
    , _paName :: !(Maybe Text)
    , _paGid :: !(Maybe (Textual Int64))
    , _paOperatingSystemType :: !(Maybe PosixAccountOperatingSystemType)
    , _paSystemId :: !(Maybe Text)
    , _paHomeDirectory :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosixAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paGecos'
--
-- * 'paUid'
--
-- * 'paUsername'
--
-- * 'paShell'
--
-- * 'paPrimary'
--
-- * 'paAccountId'
--
-- * 'paName'
--
-- * 'paGid'
--
-- * 'paOperatingSystemType'
--
-- * 'paSystemId'
--
-- * 'paHomeDirectory'
posixAccount
    :: PosixAccount
posixAccount =
  PosixAccount'
    { _paGecos = Nothing
    , _paUid = Nothing
    , _paUsername = Nothing
    , _paShell = Nothing
    , _paPrimary = Nothing
    , _paAccountId = Nothing
    , _paName = Nothing
    , _paGid = Nothing
    , _paOperatingSystemType = Nothing
    , _paSystemId = Nothing
    , _paHomeDirectory = Nothing
    }


-- | The GECOS (user information) entry for this account.
paGecos :: Lens' PosixAccount (Maybe Text)
paGecos = lens _paGecos (\ s a -> s{_paGecos = a})

-- | The user ID.
paUid :: Lens' PosixAccount (Maybe Int64)
paUid
  = lens _paUid (\ s a -> s{_paUid = a}) .
      mapping _Coerce

-- | The username of the POSIX account.
paUsername :: Lens' PosixAccount (Maybe Text)
paUsername
  = lens _paUsername (\ s a -> s{_paUsername = a})

-- | The path to the logic shell for this account.
paShell :: Lens' PosixAccount (Maybe Text)
paShell = lens _paShell (\ s a -> s{_paShell = a})

-- | Only one POSIX account can be marked as primary.
paPrimary :: Lens' PosixAccount (Maybe Bool)
paPrimary
  = lens _paPrimary (\ s a -> s{_paPrimary = a})

-- | Output only. A POSIX account identifier.
paAccountId :: Lens' PosixAccount (Maybe Text)
paAccountId
  = lens _paAccountId (\ s a -> s{_paAccountId = a})

-- | Output only. The canonical resource name.
paName :: Lens' PosixAccount (Maybe Text)
paName = lens _paName (\ s a -> s{_paName = a})

-- | The default group ID.
paGid :: Lens' PosixAccount (Maybe Int64)
paGid
  = lens _paGid (\ s a -> s{_paGid = a}) .
      mapping _Coerce

-- | The operating system type where this account applies.
paOperatingSystemType :: Lens' PosixAccount (Maybe PosixAccountOperatingSystemType)
paOperatingSystemType
  = lens _paOperatingSystemType
      (\ s a -> s{_paOperatingSystemType = a})

-- | System identifier for which account the username or uid applies to. By
-- default, the empty value is used.
paSystemId :: Lens' PosixAccount (Maybe Text)
paSystemId
  = lens _paSystemId (\ s a -> s{_paSystemId = a})

-- | The path to the home directory for this account.
paHomeDirectory :: Lens' PosixAccount (Maybe Text)
paHomeDirectory
  = lens _paHomeDirectory
      (\ s a -> s{_paHomeDirectory = a})

instance FromJSON PosixAccount where
        parseJSON
          = withObject "PosixAccount"
              (\ o ->
                 PosixAccount' <$>
                   (o .:? "gecos") <*> (o .:? "uid") <*>
                     (o .:? "username")
                     <*> (o .:? "shell")
                     <*> (o .:? "primary")
                     <*> (o .:? "accountId")
                     <*> (o .:? "name")
                     <*> (o .:? "gid")
                     <*> (o .:? "operatingSystemType")
                     <*> (o .:? "systemId")
                     <*> (o .:? "homeDirectory"))

instance ToJSON PosixAccount where
        toJSON PosixAccount'{..}
          = object
              (catMaybes
                 [("gecos" .=) <$> _paGecos, ("uid" .=) <$> _paUid,
                  ("username" .=) <$> _paUsername,
                  ("shell" .=) <$> _paShell,
                  ("primary" .=) <$> _paPrimary,
                  ("accountId" .=) <$> _paAccountId,
                  ("name" .=) <$> _paName, ("gid" .=) <$> _paGid,
                  ("operatingSystemType" .=) <$>
                    _paOperatingSystemType,
                  ("systemId" .=) <$> _paSystemId,
                  ("homeDirectory" .=) <$> _paHomeDirectory])
