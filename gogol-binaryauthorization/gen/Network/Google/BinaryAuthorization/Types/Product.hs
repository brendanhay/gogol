{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.BinaryAuthorization.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.BinaryAuthorization.Types.Product where

import Network.Google.BinaryAuthorization.Types.Sum
import Network.Google.Prelude

-- | Verifiers (e.g. Kritis implementations) MUST verify signatures with
-- respect to the trust anchors defined in policy (e.g. a Kritis policy).
-- Typically this means that the verifier has been configured with a map
-- from \`public_key_id\` to public key material (and any required
-- parameters, e.g. signing algorithm). In particular, verification
-- implementations MUST NOT treat the signature \`public_key_id\` as
-- anything more than a key lookup hint. The \`public_key_id\` DOES NOT
-- validate or authenticate a public key; it only provides a mechanism for
-- quickly selecting a public key ALREADY CONFIGURED on the verifier
-- through a trusted channel. Verification implementations MUST reject
-- signatures in any of the following circumstances: * The
-- \`public_key_id\` is not recognized by the verifier. * The public key
-- that \`public_key_id\` refers to does not verify the signature with
-- respect to the payload. The \`signature\` contents SHOULD NOT be
-- \"attached\" (where the payload is included with the serialized
-- \`signature\` bytes). Verifiers MUST ignore any \"attached\" payload and
-- only verify signatures with respect to explicitly provided payload (e.g.
-- a \`payload\` field on the proto message that holds this Signature, or
-- the canonical serialization of the proto message that holds this
-- signature).
--
-- /See:/ 'signature' smart constructor.
data Signature =
  Signature'
    { _sSignature :: !(Maybe Bytes)
    , _sPublicKeyId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Signature' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sSignature'
--
-- * 'sPublicKeyId'
signature
    :: Signature
signature = Signature' {_sSignature = Nothing, _sPublicKeyId = Nothing}


-- | The content of the signature, an opaque bytestring. The payload that
-- this signature verifies MUST be unambiguously provided with the
-- Signature during verification. A wrapper message might provide the
-- payload explicitly. Alternatively, a message might have a canonical
-- serialization that can always be unambiguously computed to derive the
-- payload.
sSignature :: Lens' Signature (Maybe ByteString)
sSignature
  = lens _sSignature (\ s a -> s{_sSignature = a}) .
      mapping _Bytes

-- | The identifier for the public key that verifies this signature. * The
-- \`public_key_id\` is required. * The \`public_key_id\` SHOULD be an
-- RFC3986 conformant URI. * When possible, the \`public_key_id\` SHOULD be
-- an immutable reference, such as a cryptographic digest. Examples of
-- valid \`public_key_id\`s: OpenPGP V4 public key fingerprint: *
-- \"openpgp4fpr:74FAF3B861BDA0870C7B6DEF607E48D2A663AEEA\" See
-- https:\/\/www.iana.org\/assignments\/uri-schemes\/prov\/openpgp4fpr for
-- more details on this scheme. RFC6920 digest-named SubjectPublicKeyInfo
-- (digest of the DER serialization): *
-- \"ni:\/\/\/sha-256;cD9o9Cq6LG3jD0iKXqEi_vdjJGecm_iXkbqVoScViaU\" *
-- \"nih:\/\/\/sha-256;703f68f42aba2c6de30f488a5ea122fef76324679c9bf89791ba95a1271589a5\"
sPublicKeyId :: Lens' Signature (Maybe Text)
sPublicKeyId
  = lens _sPublicKeyId (\ s a -> s{_sPublicKeyId = a})

instance FromJSON Signature where
        parseJSON
          = withObject "Signature"
              (\ o ->
                 Signature' <$>
                   (o .:? "signature") <*> (o .:? "publicKeyId"))

instance ToJSON Signature where
        toJSON Signature'{..}
          = object
              (catMaybes
                 [("signature" .=) <$> _sSignature,
                  ("publicKeyId" .=) <$> _sPublicKeyId])

-- | A public key in the PkixPublicKey format (see
-- https:\/\/tools.ietf.org\/html\/rfc5280#section-4.1.2.7 for details).
-- Public keys of this type are typically textually encoded using the PEM
-- format.
--
-- /See:/ 'pkixPublicKey' smart constructor.
data PkixPublicKey =
  PkixPublicKey'
    { _ppkPublicKeyPem :: !(Maybe Text)
    , _ppkSignatureAlgorithm :: !(Maybe PkixPublicKeySignatureAlgorithm)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PkixPublicKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppkPublicKeyPem'
--
-- * 'ppkSignatureAlgorithm'
pkixPublicKey
    :: PkixPublicKey
pkixPublicKey =
  PkixPublicKey' {_ppkPublicKeyPem = Nothing, _ppkSignatureAlgorithm = Nothing}


-- | A PEM-encoded public key, as described in
-- https:\/\/tools.ietf.org\/html\/rfc7468#section-13
ppkPublicKeyPem :: Lens' PkixPublicKey (Maybe Text)
ppkPublicKeyPem
  = lens _ppkPublicKeyPem
      (\ s a -> s{_ppkPublicKeyPem = a})

-- | The signature algorithm used to verify a message against a signature
-- using this key. These signature algorithm must match the structure and
-- any object identifiers encoded in \`public_key_pem\` (i.e. this
-- algorithm must match that of the public key).
ppkSignatureAlgorithm :: Lens' PkixPublicKey (Maybe PkixPublicKeySignatureAlgorithm)
ppkSignatureAlgorithm
  = lens _ppkSignatureAlgorithm
      (\ s a -> s{_ppkSignatureAlgorithm = a})

instance FromJSON PkixPublicKey where
        parseJSON
          = withObject "PkixPublicKey"
              (\ o ->
                 PkixPublicKey' <$>
                   (o .:? "publicKeyPem") <*>
                     (o .:? "signatureAlgorithm"))

instance ToJSON PkixPublicKey where
        toJSON PkixPublicKey'{..}
          = object
              (catMaybes
                 [("publicKeyPem" .=) <$> _ppkPublicKeyPem,
                  ("signatureAlgorithm" .=) <$>
                    _ppkSignatureAlgorithm])

-- | Represents a textual expression in the Common Expression Language (CEL)
-- syntax. CEL is a C-like expression language. The syntax and semantics of
-- CEL are documented at https:\/\/github.com\/google\/cel-spec. Example
-- (Comparison): title: \"Summary size limit\" description: \"Determines if
-- a summary is less than 100 chars\" expression: \"document.summary.size()
-- \< 100\" Example (Equality): title: \"Requestor is owner\" description:
-- \"Determines if requestor is the document owner\" expression:
-- \"document.owner == request.auth.claims.email\" Example (Logic): title:
-- \"Public documents\" description: \"Determine whether the document
-- should be publicly visible\" expression: \"document.type != \'private\'
-- && document.type != \'internal\'\" Example (Data Manipulation): title:
-- \"Notification string\" description: \"Create a notification string with
-- a timestamp.\" expression: \"\'New message received at \' +
-- string(document.create_time)\" The exact variables and functions that
-- may be referenced within an expression are determined by the service
-- that evaluates it. See the service documentation for additional
-- information.
--
-- /See:/ 'expr' smart constructor.
data Expr =
  Expr'
    { _eLocation :: !(Maybe Text)
    , _eExpression :: !(Maybe Text)
    , _eTitle :: !(Maybe Text)
    , _eDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Expr' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eLocation'
--
-- * 'eExpression'
--
-- * 'eTitle'
--
-- * 'eDescription'
expr
    :: Expr
expr =
  Expr'
    { _eLocation = Nothing
    , _eExpression = Nothing
    , _eTitle = Nothing
    , _eDescription = Nothing
    }


-- | Optional. String indicating the location of the expression for error
-- reporting, e.g. a file name and a position in the file.
eLocation :: Lens' Expr (Maybe Text)
eLocation
  = lens _eLocation (\ s a -> s{_eLocation = a})

-- | Textual representation of an expression in Common Expression Language
-- syntax.
eExpression :: Lens' Expr (Maybe Text)
eExpression
  = lens _eExpression (\ s a -> s{_eExpression = a})

-- | Optional. Title for the expression, i.e. a short string describing its
-- purpose. This can be used e.g. in UIs which allow to enter the
-- expression.
eTitle :: Lens' Expr (Maybe Text)
eTitle = lens _eTitle (\ s a -> s{_eTitle = a})

-- | Optional. Description of the expression. This is a longer text which
-- describes the expression, e.g. when hovered over it in a UI.
eDescription :: Lens' Expr (Maybe Text)
eDescription
  = lens _eDescription (\ s a -> s{_eDescription = a})

instance FromJSON Expr where
        parseJSON
          = withObject "Expr"
              (\ o ->
                 Expr' <$>
                   (o .:? "location") <*> (o .:? "expression") <*>
                     (o .:? "title")
                     <*> (o .:? "description"))

instance ToJSON Expr where
        toJSON Expr'{..}
          = object
              (catMaybes
                 [("location" .=) <$> _eLocation,
                  ("expression" .=) <$> _eExpression,
                  ("title" .=) <$> _eTitle,
                  ("description" .=) <$> _eDescription])

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

-- | Optional. Per-kubernetes-namespace admission rules. K8s namespace spec
-- format: [a-z.-]+, e.g. \'some-namespace\'
--
-- /See:/ 'policyKubernetesNamespaceAdmissionRules' smart constructor.
newtype PolicyKubernetesNamespaceAdmissionRules =
  PolicyKubernetesNamespaceAdmissionRules'
    { _pknarAddtional :: HashMap Text AdmissionRule
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PolicyKubernetesNamespaceAdmissionRules' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pknarAddtional'
policyKubernetesNamespaceAdmissionRules
    :: HashMap Text AdmissionRule -- ^ 'pknarAddtional'
    -> PolicyKubernetesNamespaceAdmissionRules
policyKubernetesNamespaceAdmissionRules pPknarAddtional_ =
  PolicyKubernetesNamespaceAdmissionRules'
    {_pknarAddtional = _Coerce # pPknarAddtional_}


pknarAddtional :: Lens' PolicyKubernetesNamespaceAdmissionRules (HashMap Text AdmissionRule)
pknarAddtional
  = lens _pknarAddtional
      (\ s a -> s{_pknarAddtional = a})
      . _Coerce

instance FromJSON
           PolicyKubernetesNamespaceAdmissionRules
         where
        parseJSON
          = withObject
              "PolicyKubernetesNamespaceAdmissionRules"
              (\ o ->
                 PolicyKubernetesNamespaceAdmissionRules' <$>
                   (parseJSONObject o))

instance ToJSON
           PolicyKubernetesNamespaceAdmissionRules
         where
        toJSON = toJSON . _pknarAddtional

-- | Request message for \`SetIamPolicy\` method.
--
-- /See:/ 'setIAMPolicyRequest' smart constructor.
newtype SetIAMPolicyRequest =
  SetIAMPolicyRequest'
    { _siprPolicy :: Maybe IAMPolicy
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SetIAMPolicyRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siprPolicy'
setIAMPolicyRequest
    :: SetIAMPolicyRequest
setIAMPolicyRequest = SetIAMPolicyRequest' {_siprPolicy = Nothing}


-- | REQUIRED: The complete policy to be applied to the \`resource\`. The
-- size of the policy is limited to a few 10s of KB. An empty policy is a
-- valid policy but certain Cloud Platform services (such as Projects)
-- might reject them.
siprPolicy :: Lens' SetIAMPolicyRequest (Maybe IAMPolicy)
siprPolicy
  = lens _siprPolicy (\ s a -> s{_siprPolicy = a})

instance FromJSON SetIAMPolicyRequest where
        parseJSON
          = withObject "SetIAMPolicyRequest"
              (\ o -> SetIAMPolicyRequest' <$> (o .:? "policy"))

instance ToJSON SetIAMPolicyRequest where
        toJSON SetIAMPolicyRequest'{..}
          = object (catMaybes [("policy" .=) <$> _siprPolicy])

-- | Request message for ValidationHelperV1.ValidateAttestationOccurrence.
--
-- /See:/ 'validateAttestationOccurrenceRequest' smart constructor.
data ValidateAttestationOccurrenceRequest =
  ValidateAttestationOccurrenceRequest'
    { _vaorOccurrenceNote :: !(Maybe Text)
    , _vaorAttestation :: !(Maybe AttestationOccurrence)
    , _vaorOccurrenceResourceURI :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ValidateAttestationOccurrenceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vaorOccurrenceNote'
--
-- * 'vaorAttestation'
--
-- * 'vaorOccurrenceResourceURI'
validateAttestationOccurrenceRequest
    :: ValidateAttestationOccurrenceRequest
validateAttestationOccurrenceRequest =
  ValidateAttestationOccurrenceRequest'
    { _vaorOccurrenceNote = Nothing
    , _vaorAttestation = Nothing
    , _vaorOccurrenceResourceURI = Nothing
    }


-- | Required. The resource name of the Note to which the containing
-- Occurrence is associated.
vaorOccurrenceNote :: Lens' ValidateAttestationOccurrenceRequest (Maybe Text)
vaorOccurrenceNote
  = lens _vaorOccurrenceNote
      (\ s a -> s{_vaorOccurrenceNote = a})

-- | Required. An AttestationOccurrence to be checked that it can be verified
-- by the Attestor. It does not have to be an existing entity in Container
-- Analysis. It must otherwise be a valid AttestationOccurrence.
vaorAttestation :: Lens' ValidateAttestationOccurrenceRequest (Maybe AttestationOccurrence)
vaorAttestation
  = lens _vaorAttestation
      (\ s a -> s{_vaorAttestation = a})

-- | Required. The URI of the artifact (e.g. container image) that is the
-- subject of the containing Occurrence.
vaorOccurrenceResourceURI :: Lens' ValidateAttestationOccurrenceRequest (Maybe Text)
vaorOccurrenceResourceURI
  = lens _vaorOccurrenceResourceURI
      (\ s a -> s{_vaorOccurrenceResourceURI = a})

instance FromJSON
           ValidateAttestationOccurrenceRequest
         where
        parseJSON
          = withObject "ValidateAttestationOccurrenceRequest"
              (\ o ->
                 ValidateAttestationOccurrenceRequest' <$>
                   (o .:? "occurrenceNote") <*> (o .:? "attestation")
                     <*> (o .:? "occurrenceResourceUri"))

instance ToJSON ValidateAttestationOccurrenceRequest
         where
        toJSON ValidateAttestationOccurrenceRequest'{..}
          = object
              (catMaybes
                 [("occurrenceNote" .=) <$> _vaorOccurrenceNote,
                  ("attestation" .=) <$> _vaorAttestation,
                  ("occurrenceResourceUri" .=) <$>
                    _vaorOccurrenceResourceURI])

--
-- /See:/ 'jwt' smart constructor.
newtype Jwt =
  Jwt'
    { _jCompactJwt :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Jwt' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jCompactJwt'
jwt
    :: Jwt
jwt = Jwt' {_jCompactJwt = Nothing}


-- | The compact encoding of a JWS, which is always three base64 encoded
-- strings joined by periods. For details, see:
-- https:\/\/tools.ietf.org\/html\/rfc7515.html#section-3.1
jCompactJwt :: Lens' Jwt (Maybe Text)
jCompactJwt
  = lens _jCompactJwt (\ s a -> s{_jCompactJwt = a})

instance FromJSON Jwt where
        parseJSON
          = withObject "Jwt"
              (\ o -> Jwt' <$> (o .:? "compactJwt"))

instance ToJSON Jwt where
        toJSON Jwt'{..}
          = object
              (catMaybes [("compactJwt" .=) <$> _jCompactJwt])

-- | Response message for BinauthzManagementService.ListAttestors.
--
-- /See:/ 'listAttestorsResponse' smart constructor.
data ListAttestorsResponse =
  ListAttestorsResponse'
    { _larNextPageToken :: !(Maybe Text)
    , _larAttestors :: !(Maybe [Attestor])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ListAttestorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larNextPageToken'
--
-- * 'larAttestors'
listAttestorsResponse
    :: ListAttestorsResponse
listAttestorsResponse =
  ListAttestorsResponse' {_larNextPageToken = Nothing, _larAttestors = Nothing}


-- | A token to retrieve the next page of results. Pass this value in the
-- ListAttestorsRequest.page_token field in the subsequent call to the
-- \`ListAttestors\` method to retrieve the next page of results.
larNextPageToken :: Lens' ListAttestorsResponse (Maybe Text)
larNextPageToken
  = lens _larNextPageToken
      (\ s a -> s{_larNextPageToken = a})

-- | The list of attestors.
larAttestors :: Lens' ListAttestorsResponse [Attestor]
larAttestors
  = lens _larAttestors (\ s a -> s{_larAttestors = a})
      . _Default
      . _Coerce

instance FromJSON ListAttestorsResponse where
        parseJSON
          = withObject "ListAttestorsResponse"
              (\ o ->
                 ListAttestorsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "attestors" .!= mempty))

instance ToJSON ListAttestorsResponse where
        toJSON ListAttestorsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _larNextPageToken,
                  ("attestors" .=) <$> _larAttestors])

-- | Response message for ValidationHelperV1.ValidateAttestationOccurrence.
--
-- /See:/ 'validateAttestationOccurrenceResponse' smart constructor.
data ValidateAttestationOccurrenceResponse =
  ValidateAttestationOccurrenceResponse'
    { _vaorDenialReason :: !(Maybe Text)
    , _vaorResult :: !(Maybe ValidateAttestationOccurrenceResponseResult)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ValidateAttestationOccurrenceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vaorDenialReason'
--
-- * 'vaorResult'
validateAttestationOccurrenceResponse
    :: ValidateAttestationOccurrenceResponse
validateAttestationOccurrenceResponse =
  ValidateAttestationOccurrenceResponse'
    {_vaorDenialReason = Nothing, _vaorResult = Nothing}


-- | The reason for denial if the Attestation couldn\'t be validated.
vaorDenialReason :: Lens' ValidateAttestationOccurrenceResponse (Maybe Text)
vaorDenialReason
  = lens _vaorDenialReason
      (\ s a -> s{_vaorDenialReason = a})

-- | The result of the Attestation validation.
vaorResult :: Lens' ValidateAttestationOccurrenceResponse (Maybe ValidateAttestationOccurrenceResponseResult)
vaorResult
  = lens _vaorResult (\ s a -> s{_vaorResult = a})

instance FromJSON
           ValidateAttestationOccurrenceResponse
         where
        parseJSON
          = withObject "ValidateAttestationOccurrenceResponse"
              (\ o ->
                 ValidateAttestationOccurrenceResponse' <$>
                   (o .:? "denialReason") <*> (o .:? "result"))

instance ToJSON ValidateAttestationOccurrenceResponse
         where
        toJSON ValidateAttestationOccurrenceResponse'{..}
          = object
              (catMaybes
                 [("denialReason" .=) <$> _vaorDenialReason,
                  ("result" .=) <$> _vaorResult])

-- | An admission allowlist pattern exempts images from checks by admission
-- rules.
--
-- /See:/ 'admissionWhiteListPattern' smart constructor.
newtype AdmissionWhiteListPattern =
  AdmissionWhiteListPattern'
    { _awlpNamePattern :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdmissionWhiteListPattern' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'awlpNamePattern'
admissionWhiteListPattern
    :: AdmissionWhiteListPattern
admissionWhiteListPattern =
  AdmissionWhiteListPattern' {_awlpNamePattern = Nothing}


-- | An image name pattern to allowlist, in the form
-- \`registry\/path\/to\/image\`. This supports a trailing \`*\` wildcard,
-- but this is allowed only in text after the \`registry\/\` part. This
-- also supports a trailing \`**\` wildcard which matches subdirectories of
-- a given entry.
awlpNamePattern :: Lens' AdmissionWhiteListPattern (Maybe Text)
awlpNamePattern
  = lens _awlpNamePattern
      (\ s a -> s{_awlpNamePattern = a})

instance FromJSON AdmissionWhiteListPattern where
        parseJSON
          = withObject "AdmissionWhiteListPattern"
              (\ o ->
                 AdmissionWhiteListPattern' <$> (o .:? "namePattern"))

instance ToJSON AdmissionWhiteListPattern where
        toJSON AdmissionWhiteListPattern'{..}
          = object
              (catMaybes [("namePattern" .=) <$> _awlpNamePattern])

-- | Optional. Per-istio-service-identity admission rules. Istio service
-- identity spec format: spiffe:\/\/\/ns\/\/sa\/ or \/ns\/\/sa\/ e.g.
-- spiffe:\/\/example.com\/ns\/test-ns\/sa\/default
--
-- /See:/ 'policyIstioServiceIdentityAdmissionRules' smart constructor.
newtype PolicyIstioServiceIdentityAdmissionRules =
  PolicyIstioServiceIdentityAdmissionRules'
    { _pisiarAddtional :: HashMap Text AdmissionRule
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PolicyIstioServiceIdentityAdmissionRules' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pisiarAddtional'
policyIstioServiceIdentityAdmissionRules
    :: HashMap Text AdmissionRule -- ^ 'pisiarAddtional'
    -> PolicyIstioServiceIdentityAdmissionRules
policyIstioServiceIdentityAdmissionRules pPisiarAddtional_ =
  PolicyIstioServiceIdentityAdmissionRules'
    {_pisiarAddtional = _Coerce # pPisiarAddtional_}


pisiarAddtional :: Lens' PolicyIstioServiceIdentityAdmissionRules (HashMap Text AdmissionRule)
pisiarAddtional
  = lens _pisiarAddtional
      (\ s a -> s{_pisiarAddtional = a})
      . _Coerce

instance FromJSON
           PolicyIstioServiceIdentityAdmissionRules
         where
        parseJSON
          = withObject
              "PolicyIstioServiceIdentityAdmissionRules"
              (\ o ->
                 PolicyIstioServiceIdentityAdmissionRules' <$>
                   (parseJSONObject o))

instance ToJSON
           PolicyIstioServiceIdentityAdmissionRules
         where
        toJSON = toJSON . _pisiarAddtional

-- | An admission rule specifies either that all container images used in a
-- pod creation request must be attested to by one or more attestors, that
-- all pod creations will be allowed, or that all pod creations will be
-- denied. Images matching an admission allowlist pattern are exempted from
-- admission rules and will never block a pod creation.
--
-- /See:/ 'admissionRule' smart constructor.
data AdmissionRule =
  AdmissionRule'
    { _arEnforcementMode :: !(Maybe AdmissionRuleEnforcementMode)
    , _arEvaluationMode :: !(Maybe AdmissionRuleEvaluationMode)
    , _arRequireAttestationsBy :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdmissionRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arEnforcementMode'
--
-- * 'arEvaluationMode'
--
-- * 'arRequireAttestationsBy'
admissionRule
    :: AdmissionRule
admissionRule =
  AdmissionRule'
    { _arEnforcementMode = Nothing
    , _arEvaluationMode = Nothing
    , _arRequireAttestationsBy = Nothing
    }


-- | Required. The action when a pod creation is denied by the admission
-- rule.
arEnforcementMode :: Lens' AdmissionRule (Maybe AdmissionRuleEnforcementMode)
arEnforcementMode
  = lens _arEnforcementMode
      (\ s a -> s{_arEnforcementMode = a})

-- | Required. How this admission rule will be evaluated.
arEvaluationMode :: Lens' AdmissionRule (Maybe AdmissionRuleEvaluationMode)
arEvaluationMode
  = lens _arEvaluationMode
      (\ s a -> s{_arEvaluationMode = a})

-- | Optional. The resource names of the attestors that must attest to a
-- container image, in the format \`projects\/*\/attestors\/*\`. Each
-- attestor must exist before a policy can reference it. To add an attestor
-- to a policy the principal issuing the policy change request must be able
-- to read the attestor resource. Note: this field must be non-empty when
-- the evaluation_mode field specifies REQUIRE_ATTESTATION, otherwise it
-- must be empty.
arRequireAttestationsBy :: Lens' AdmissionRule [Text]
arRequireAttestationsBy
  = lens _arRequireAttestationsBy
      (\ s a -> s{_arRequireAttestationsBy = a})
      . _Default
      . _Coerce

instance FromJSON AdmissionRule where
        parseJSON
          = withObject "AdmissionRule"
              (\ o ->
                 AdmissionRule' <$>
                   (o .:? "enforcementMode") <*>
                     (o .:? "evaluationMode")
                     <*> (o .:? "requireAttestationsBy" .!= mempty))

instance ToJSON AdmissionRule where
        toJSON AdmissionRule'{..}
          = object
              (catMaybes
                 [("enforcementMode" .=) <$> _arEnforcementMode,
                  ("evaluationMode" .=) <$> _arEvaluationMode,
                  ("requireAttestationsBy" .=) <$>
                    _arRequireAttestationsBy])

-- | Request message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsRequest' smart constructor.
newtype TestIAMPermissionsRequest =
  TestIAMPermissionsRequest'
    { _tiprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiprPermissions'
testIAMPermissionsRequest
    :: TestIAMPermissionsRequest
testIAMPermissionsRequest =
  TestIAMPermissionsRequest' {_tiprPermissions = Nothing}


-- | The set of permissions to check for the \`resource\`. Permissions with
-- wildcards (such as \'*\' or \'storage.*\') are not allowed. For more
-- information see [IAM
-- Overview](https:\/\/cloud.google.com\/iam\/docs\/overview#permissions).
tiprPermissions :: Lens' TestIAMPermissionsRequest [Text]
tiprPermissions
  = lens _tiprPermissions
      (\ s a -> s{_tiprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsRequest where
        parseJSON
          = withObject "TestIAMPermissionsRequest"
              (\ o ->
                 TestIAMPermissionsRequest' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsRequest where
        toJSON TestIAMPermissionsRequest'{..}
          = object
              (catMaybes [("permissions" .=) <$> _tiprPermissions])

-- | Optional. Per-kubernetes-service-account admission rules. Service
-- account spec format: \`namespace:serviceaccount\`. e.g.
-- \'test-ns:default\'
--
-- /See:/ 'policyKubernetesServiceAccountAdmissionRules' smart constructor.
newtype PolicyKubernetesServiceAccountAdmissionRules =
  PolicyKubernetesServiceAccountAdmissionRules'
    { _pksaarAddtional :: HashMap Text AdmissionRule
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PolicyKubernetesServiceAccountAdmissionRules' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pksaarAddtional'
policyKubernetesServiceAccountAdmissionRules
    :: HashMap Text AdmissionRule -- ^ 'pksaarAddtional'
    -> PolicyKubernetesServiceAccountAdmissionRules
policyKubernetesServiceAccountAdmissionRules pPksaarAddtional_ =
  PolicyKubernetesServiceAccountAdmissionRules'
    {_pksaarAddtional = _Coerce # pPksaarAddtional_}


pksaarAddtional :: Lens' PolicyKubernetesServiceAccountAdmissionRules (HashMap Text AdmissionRule)
pksaarAddtional
  = lens _pksaarAddtional
      (\ s a -> s{_pksaarAddtional = a})
      . _Coerce

instance FromJSON
           PolicyKubernetesServiceAccountAdmissionRules
         where
        parseJSON
          = withObject
              "PolicyKubernetesServiceAccountAdmissionRules"
              (\ o ->
                 PolicyKubernetesServiceAccountAdmissionRules' <$>
                   (parseJSONObject o))

instance ToJSON
           PolicyKubernetesServiceAccountAdmissionRules
         where
        toJSON = toJSON . _pksaarAddtional

-- | An Identity and Access Management (IAM) policy, which specifies access
-- controls for Google Cloud resources. A \`Policy\` is a collection of
-- \`bindings\`. A \`binding\` binds one or more \`members\` to a single
-- \`role\`. Members can be user accounts, service accounts, Google groups,
-- and domains (such as G Suite). A \`role\` is a named list of
-- permissions; each \`role\` can be an IAM predefined role or a
-- user-created custom role. For some types of Google Cloud resources, a
-- \`binding\` can also specify a \`condition\`, which is a logical
-- expression that allows access to a resource only if the expression
-- evaluates to \`true\`. A condition can add constraints based on
-- attributes of the request, the resource, or both. To learn which
-- resources support conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
-- **JSON example:** { \"bindings\": [ { \"role\":
-- \"roles\/resourcemanager.organizationAdmin\", \"members\": [
-- \"user:mike\'example.com\", \"group:admins\'example.com\",
-- \"domain:google.com\",
-- \"serviceAccount:my-project-id\'appspot.gserviceaccount.com\" ] }, {
-- \"role\": \"roles\/resourcemanager.organizationViewer\", \"members\": [
-- \"user:eve\'example.com\" ], \"condition\": { \"title\": \"expirable
-- access\", \"description\": \"Does not grant access after Sep 2020\",
-- \"expression\": \"request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\')\", } } ], \"etag\":
-- \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: -
-- members: - user:mike\'example.com - group:admins\'example.com -
-- domain:google.com -
-- serviceAccount:my-project-id\'appspot.gserviceaccount.com role:
-- roles\/resourcemanager.organizationAdmin - members: -
-- user:eve\'example.com role: roles\/resourcemanager.organizationViewer
-- condition: title: expirable access description: Does not grant access
-- after Sep 2020 expression: request.time \<
-- timestamp(\'2020-10-01T00:00:00.000Z\') - etag: BwWWja0YfJA= - version:
-- 3 For a description of IAM and its features, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/docs\/).
--
-- /See:/ 'iamPolicy' smart constructor.
data IAMPolicy =
  IAMPolicy'
    { _ipEtag :: !(Maybe Bytes)
    , _ipVersion :: !(Maybe (Textual Int32))
    , _ipBindings :: !(Maybe [Binding])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'IAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipEtag'
--
-- * 'ipVersion'
--
-- * 'ipBindings'
iamPolicy
    :: IAMPolicy
iamPolicy =
  IAMPolicy' {_ipEtag = Nothing, _ipVersion = Nothing, _ipBindings = Nothing}


-- | \`etag\` is used for optimistic concurrency control as a way to help
-- prevent simultaneous updates of a policy from overwriting each other. It
-- is strongly suggested that systems make use of the \`etag\` in the
-- read-modify-write cycle to perform policy updates in order to avoid race
-- conditions: An \`etag\` is returned in the response to \`getIamPolicy\`,
-- and systems are expected to put that etag in the request to
-- \`setIamPolicy\` to ensure that their change will be applied to the same
-- version of the policy. **Important:** If you use IAM Conditions, you
-- must include the \`etag\` field whenever you call \`setIamPolicy\`. If
-- you omit this field, then IAM allows you to overwrite a version \`3\`
-- policy with a version \`1\` policy, and all of the conditions in the
-- version \`3\` policy are lost.
ipEtag :: Lens' IAMPolicy (Maybe ByteString)
ipEtag
  = lens _ipEtag (\ s a -> s{_ipEtag = a}) .
      mapping _Bytes

-- | Specifies the format of the policy. Valid values are \`0\`, \`1\`, and
-- \`3\`. Requests that specify an invalid value are rejected. Any
-- operation that affects conditional role bindings must specify version
-- \`3\`. This requirement applies to the following operations: * Getting a
-- policy that includes a conditional role binding * Adding a conditional
-- role binding to a policy * Changing a conditional role binding in a
-- policy * Removing any role binding, with or without a condition, from a
-- policy that includes conditions **Important:** If you use IAM
-- Conditions, you must include the \`etag\` field whenever you call
-- \`setIamPolicy\`. If you omit this field, then IAM allows you to
-- overwrite a version \`3\` policy with a version \`1\` policy, and all of
-- the conditions in the version \`3\` policy are lost. If a policy does
-- not include any conditions, operations on that policy may specify any
-- valid version or leave the field unset. To learn which resources support
-- conditions in their IAM policies, see the [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
ipVersion :: Lens' IAMPolicy (Maybe Int32)
ipVersion
  = lens _ipVersion (\ s a -> s{_ipVersion = a}) .
      mapping _Coerce

-- | Associates a list of \`members\` to a \`role\`. Optionally, may specify
-- a \`condition\` that determines how and when the \`bindings\` are
-- applied. Each of the \`bindings\` must contain at least one member.
ipBindings :: Lens' IAMPolicy [Binding]
ipBindings
  = lens _ipBindings (\ s a -> s{_ipBindings = a}) .
      _Default
      . _Coerce

instance FromJSON IAMPolicy where
        parseJSON
          = withObject "IAMPolicy"
              (\ o ->
                 IAMPolicy' <$>
                   (o .:? "etag") <*> (o .:? "version") <*>
                     (o .:? "bindings" .!= mempty))

instance ToJSON IAMPolicy where
        toJSON IAMPolicy'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _ipEtag,
                  ("version" .=) <$> _ipVersion,
                  ("bindings" .=) <$> _ipBindings])

-- | An attestor public key that will be used to verify attestations signed
-- by this attestor.
--
-- /See:/ 'attestorPublicKey' smart constructor.
data AttestorPublicKey =
  AttestorPublicKey'
    { _apkPkixPublicKey :: !(Maybe PkixPublicKey)
    , _apkAsciiArmoredPgpPublicKey :: !(Maybe Text)
    , _apkId :: !(Maybe Text)
    , _apkComment :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AttestorPublicKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apkPkixPublicKey'
--
-- * 'apkAsciiArmoredPgpPublicKey'
--
-- * 'apkId'
--
-- * 'apkComment'
attestorPublicKey
    :: AttestorPublicKey
attestorPublicKey =
  AttestorPublicKey'
    { _apkPkixPublicKey = Nothing
    , _apkAsciiArmoredPgpPublicKey = Nothing
    , _apkId = Nothing
    , _apkComment = Nothing
    }


-- | A raw PKIX SubjectPublicKeyInfo format public key. NOTE: \`id\` may be
-- explicitly provided by the caller when using this type of public key,
-- but it MUST be a valid RFC3986 URI. If \`id\` is left blank, a default
-- one will be computed based on the digest of the DER encoding of the
-- public key.
apkPkixPublicKey :: Lens' AttestorPublicKey (Maybe PkixPublicKey)
apkPkixPublicKey
  = lens _apkPkixPublicKey
      (\ s a -> s{_apkPkixPublicKey = a})

-- | ASCII-armored representation of a PGP public key, as the entire output
-- by the command \`gpg --export --armor foo\'example.com\` (either LF or
-- CRLF line endings). When using this field, \`id\` should be left blank.
-- The BinAuthz API handlers will calculate the ID and fill it in
-- automatically. BinAuthz computes this ID as the OpenPGP RFC4880 V4
-- fingerprint, represented as upper-case hex. If \`id\` is provided by the
-- caller, it will be overwritten by the API-calculated ID.
apkAsciiArmoredPgpPublicKey :: Lens' AttestorPublicKey (Maybe Text)
apkAsciiArmoredPgpPublicKey
  = lens _apkAsciiArmoredPgpPublicKey
      (\ s a -> s{_apkAsciiArmoredPgpPublicKey = a})

-- | The ID of this public key. Signatures verified by BinAuthz must include
-- the ID of the public key that can be used to verify them, and that ID
-- must match the contents of this field exactly. Additional restrictions
-- on this field can be imposed based on which public key type is
-- encapsulated. See the documentation on \`public_key\` cases below for
-- details.
apkId :: Lens' AttestorPublicKey (Maybe Text)
apkId = lens _apkId (\ s a -> s{_apkId = a})

-- | Optional. A descriptive comment. This field may be updated.
apkComment :: Lens' AttestorPublicKey (Maybe Text)
apkComment
  = lens _apkComment (\ s a -> s{_apkComment = a})

instance FromJSON AttestorPublicKey where
        parseJSON
          = withObject "AttestorPublicKey"
              (\ o ->
                 AttestorPublicKey' <$>
                   (o .:? "pkixPublicKey") <*>
                     (o .:? "asciiArmoredPgpPublicKey")
                     <*> (o .:? "id")
                     <*> (o .:? "comment"))

instance ToJSON AttestorPublicKey where
        toJSON AttestorPublicKey'{..}
          = object
              (catMaybes
                 [("pkixPublicKey" .=) <$> _apkPkixPublicKey,
                  ("asciiArmoredPgpPublicKey" .=) <$>
                    _apkAsciiArmoredPgpPublicKey,
                  ("id" .=) <$> _apkId,
                  ("comment" .=) <$> _apkComment])

-- | Response message for \`TestIamPermissions\` method.
--
-- /See:/ 'testIAMPermissionsResponse' smart constructor.
newtype TestIAMPermissionsResponse =
  TestIAMPermissionsResponse'
    { _tiamprPermissions :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TestIAMPermissionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiamprPermissions'
testIAMPermissionsResponse
    :: TestIAMPermissionsResponse
testIAMPermissionsResponse =
  TestIAMPermissionsResponse' {_tiamprPermissions = Nothing}


-- | A subset of \`TestPermissionsRequest.permissions\` that the caller is
-- allowed.
tiamprPermissions :: Lens' TestIAMPermissionsResponse [Text]
tiamprPermissions
  = lens _tiamprPermissions
      (\ s a -> s{_tiamprPermissions = a})
      . _Default
      . _Coerce

instance FromJSON TestIAMPermissionsResponse where
        parseJSON
          = withObject "TestIAMPermissionsResponse"
              (\ o ->
                 TestIAMPermissionsResponse' <$>
                   (o .:? "permissions" .!= mempty))

instance ToJSON TestIAMPermissionsResponse where
        toJSON TestIAMPermissionsResponse'{..}
          = object
              (catMaybes
                 [("permissions" .=) <$> _tiamprPermissions])

-- | A policy for container image binary authorization.
--
-- /See:/ 'policy' smart constructor.
data Policy =
  Policy'
    { _pDefaultAdmissionRule :: !(Maybe AdmissionRule)
    , _pIstioServiceIdentityAdmissionRules :: !(Maybe PolicyIstioServiceIdentityAdmissionRules)
    , _pAdmissionWhiteListPatterns :: !(Maybe [AdmissionWhiteListPattern])
    , _pKubernetesServiceAccountAdmissionRules :: !(Maybe PolicyKubernetesServiceAccountAdmissionRules)
    , _pClusterAdmissionRules :: !(Maybe PolicyClusterAdmissionRules)
    , _pUpdateTime :: !(Maybe DateTime')
    , _pName :: !(Maybe Text)
    , _pKubernetesNamespaceAdmissionRules :: !(Maybe PolicyKubernetesNamespaceAdmissionRules)
    , _pGlobalPolicyEvaluationMode :: !(Maybe PolicyGlobalPolicyEvaluationMode)
    , _pDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Policy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pDefaultAdmissionRule'
--
-- * 'pIstioServiceIdentityAdmissionRules'
--
-- * 'pAdmissionWhiteListPatterns'
--
-- * 'pKubernetesServiceAccountAdmissionRules'
--
-- * 'pClusterAdmissionRules'
--
-- * 'pUpdateTime'
--
-- * 'pName'
--
-- * 'pKubernetesNamespaceAdmissionRules'
--
-- * 'pGlobalPolicyEvaluationMode'
--
-- * 'pDescription'
policy
    :: Policy
policy =
  Policy'
    { _pDefaultAdmissionRule = Nothing
    , _pIstioServiceIdentityAdmissionRules = Nothing
    , _pAdmissionWhiteListPatterns = Nothing
    , _pKubernetesServiceAccountAdmissionRules = Nothing
    , _pClusterAdmissionRules = Nothing
    , _pUpdateTime = Nothing
    , _pName = Nothing
    , _pKubernetesNamespaceAdmissionRules = Nothing
    , _pGlobalPolicyEvaluationMode = Nothing
    , _pDescription = Nothing
    }


-- | Required. Default admission rule for a cluster without a per-cluster,
-- per- kubernetes-service-account, or per-istio-service-identity admission
-- rule.
pDefaultAdmissionRule :: Lens' Policy (Maybe AdmissionRule)
pDefaultAdmissionRule
  = lens _pDefaultAdmissionRule
      (\ s a -> s{_pDefaultAdmissionRule = a})

-- | Optional. Per-istio-service-identity admission rules. Istio service
-- identity spec format: spiffe:\/\/\/ns\/\/sa\/ or \/ns\/\/sa\/ e.g.
-- spiffe:\/\/example.com\/ns\/test-ns\/sa\/default
pIstioServiceIdentityAdmissionRules :: Lens' Policy (Maybe PolicyIstioServiceIdentityAdmissionRules)
pIstioServiceIdentityAdmissionRules
  = lens _pIstioServiceIdentityAdmissionRules
      (\ s a ->
         s{_pIstioServiceIdentityAdmissionRules = a})

-- | Optional. Admission policy allowlisting. A matching admission request
-- will always be permitted. This feature is typically used to exclude
-- Google or third-party infrastructure images from Binary Authorization
-- policies.
pAdmissionWhiteListPatterns :: Lens' Policy [AdmissionWhiteListPattern]
pAdmissionWhiteListPatterns
  = lens _pAdmissionWhiteListPatterns
      (\ s a -> s{_pAdmissionWhiteListPatterns = a})
      . _Default
      . _Coerce

-- | Optional. Per-kubernetes-service-account admission rules. Service
-- account spec format: \`namespace:serviceaccount\`. e.g.
-- \'test-ns:default\'
pKubernetesServiceAccountAdmissionRules :: Lens' Policy (Maybe PolicyKubernetesServiceAccountAdmissionRules)
pKubernetesServiceAccountAdmissionRules
  = lens _pKubernetesServiceAccountAdmissionRules
      (\ s a ->
         s{_pKubernetesServiceAccountAdmissionRules = a})

-- | Optional. Per-cluster admission rules. Cluster spec format:
-- \`location.clusterId\`. There can be at most one admission rule per
-- cluster spec. A \`location\` is either a compute zone (e.g.
-- us-central1-a) or a region (e.g. us-central1). For \`clusterId\` syntax
-- restrictions see
-- https:\/\/cloud.google.com\/container-engine\/reference\/rest\/v1\/projects.zones.clusters.
pClusterAdmissionRules :: Lens' Policy (Maybe PolicyClusterAdmissionRules)
pClusterAdmissionRules
  = lens _pClusterAdmissionRules
      (\ s a -> s{_pClusterAdmissionRules = a})

-- | Output only. Time when the policy was last updated.
pUpdateTime :: Lens' Policy (Maybe UTCTime)
pUpdateTime
  = lens _pUpdateTime (\ s a -> s{_pUpdateTime = a}) .
      mapping _DateTime

-- | Output only. The resource name, in the format \`projects\/*\/policy\`.
-- There is at most one policy per project.
pName :: Lens' Policy (Maybe Text)
pName = lens _pName (\ s a -> s{_pName = a})

-- | Optional. Per-kubernetes-namespace admission rules. K8s namespace spec
-- format: [a-z.-]+, e.g. \'some-namespace\'
pKubernetesNamespaceAdmissionRules :: Lens' Policy (Maybe PolicyKubernetesNamespaceAdmissionRules)
pKubernetesNamespaceAdmissionRules
  = lens _pKubernetesNamespaceAdmissionRules
      (\ s a -> s{_pKubernetesNamespaceAdmissionRules = a})

-- | Optional. Controls the evaluation of a Google-maintained global
-- admission policy for common system-level images. Images not covered by
-- the global policy will be subject to the project admission policy. This
-- setting has no effect when specified inside a global admission policy.
pGlobalPolicyEvaluationMode :: Lens' Policy (Maybe PolicyGlobalPolicyEvaluationMode)
pGlobalPolicyEvaluationMode
  = lens _pGlobalPolicyEvaluationMode
      (\ s a -> s{_pGlobalPolicyEvaluationMode = a})

-- | Optional. A descriptive comment.
pDescription :: Lens' Policy (Maybe Text)
pDescription
  = lens _pDescription (\ s a -> s{_pDescription = a})

instance FromJSON Policy where
        parseJSON
          = withObject "Policy"
              (\ o ->
                 Policy' <$>
                   (o .:? "defaultAdmissionRule") <*>
                     (o .:? "istioServiceIdentityAdmissionRules")
                     <*> (o .:? "admissionWhitelistPatterns" .!= mempty)
                     <*> (o .:? "kubernetesServiceAccountAdmissionRules")
                     <*> (o .:? "clusterAdmissionRules")
                     <*> (o .:? "updateTime")
                     <*> (o .:? "name")
                     <*> (o .:? "kubernetesNamespaceAdmissionRules")
                     <*> (o .:? "globalPolicyEvaluationMode")
                     <*> (o .:? "description"))

instance ToJSON Policy where
        toJSON Policy'{..}
          = object
              (catMaybes
                 [("defaultAdmissionRule" .=) <$>
                    _pDefaultAdmissionRule,
                  ("istioServiceIdentityAdmissionRules" .=) <$>
                    _pIstioServiceIdentityAdmissionRules,
                  ("admissionWhitelistPatterns" .=) <$>
                    _pAdmissionWhiteListPatterns,
                  ("kubernetesServiceAccountAdmissionRules" .=) <$>
                    _pKubernetesServiceAccountAdmissionRules,
                  ("clusterAdmissionRules" .=) <$>
                    _pClusterAdmissionRules,
                  ("updateTime" .=) <$> _pUpdateTime,
                  ("name" .=) <$> _pName,
                  ("kubernetesNamespaceAdmissionRules" .=) <$>
                    _pKubernetesNamespaceAdmissionRules,
                  ("globalPolicyEvaluationMode" .=) <$>
                    _pGlobalPolicyEvaluationMode,
                  ("description" .=) <$> _pDescription])

-- | An user owned Grafeas note references a Grafeas Attestation.Authority
-- Note created by the user.
--
-- /See:/ 'userOwnedGrafeasNote' smart constructor.
data UserOwnedGrafeasNote =
  UserOwnedGrafeasNote'
    { _uognDelegationServiceAccountEmail :: !(Maybe Text)
    , _uognPublicKeys :: !(Maybe [AttestorPublicKey])
    , _uognNoteReference :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserOwnedGrafeasNote' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uognDelegationServiceAccountEmail'
--
-- * 'uognPublicKeys'
--
-- * 'uognNoteReference'
userOwnedGrafeasNote
    :: UserOwnedGrafeasNote
userOwnedGrafeasNote =
  UserOwnedGrafeasNote'
    { _uognDelegationServiceAccountEmail = Nothing
    , _uognPublicKeys = Nothing
    , _uognNoteReference = Nothing
    }


-- | Output only. This field will contain the service account email address
-- that this Attestor will use as the principal when querying Container
-- Analysis. Attestor administrators must grant this service account the
-- IAM role needed to read attestations from the note_reference in
-- Container Analysis (\`containeranalysis.notes.occurrences.viewer\`).
-- This email address is fixed for the lifetime of the Attestor, but
-- callers should not make any other assumptions about the service account
-- email; future versions may use an email based on a different naming
-- pattern.
uognDelegationServiceAccountEmail :: Lens' UserOwnedGrafeasNote (Maybe Text)
uognDelegationServiceAccountEmail
  = lens _uognDelegationServiceAccountEmail
      (\ s a -> s{_uognDelegationServiceAccountEmail = a})

-- | Optional. Public keys that verify attestations signed by this attestor.
-- This field may be updated. If this field is non-empty, one of the
-- specified public keys must verify that an attestation was signed by this
-- attestor for the image specified in the admission request. If this field
-- is empty, this attestor always returns that no valid attestations exist.
uognPublicKeys :: Lens' UserOwnedGrafeasNote [AttestorPublicKey]
uognPublicKeys
  = lens _uognPublicKeys
      (\ s a -> s{_uognPublicKeys = a})
      . _Default
      . _Coerce

-- | Required. The Grafeas resource name of a Attestation.Authority Note,
-- created by the user, in the format: \`projects\/*\/notes\/*\`. This
-- field may not be updated. An attestation by this attestor is stored as a
-- Grafeas Attestation.Authority Occurrence that names a container image
-- and that links to this Note. Grafeas is an external dependency.
uognNoteReference :: Lens' UserOwnedGrafeasNote (Maybe Text)
uognNoteReference
  = lens _uognNoteReference
      (\ s a -> s{_uognNoteReference = a})

instance FromJSON UserOwnedGrafeasNote where
        parseJSON
          = withObject "UserOwnedGrafeasNote"
              (\ o ->
                 UserOwnedGrafeasNote' <$>
                   (o .:? "delegationServiceAccountEmail") <*>
                     (o .:? "publicKeys" .!= mempty)
                     <*> (o .:? "noteReference"))

instance ToJSON UserOwnedGrafeasNote where
        toJSON UserOwnedGrafeasNote'{..}
          = object
              (catMaybes
                 [("delegationServiceAccountEmail" .=) <$>
                    _uognDelegationServiceAccountEmail,
                  ("publicKeys" .=) <$> _uognPublicKeys,
                  ("noteReference" .=) <$> _uognNoteReference])

-- | Optional. Per-cluster admission rules. Cluster spec format:
-- \`location.clusterId\`. There can be at most one admission rule per
-- cluster spec. A \`location\` is either a compute zone (e.g.
-- us-central1-a) or a region (e.g. us-central1). For \`clusterId\` syntax
-- restrictions see
-- https:\/\/cloud.google.com\/container-engine\/reference\/rest\/v1\/projects.zones.clusters.
--
-- /See:/ 'policyClusterAdmissionRules' smart constructor.
newtype PolicyClusterAdmissionRules =
  PolicyClusterAdmissionRules'
    { _pcarAddtional :: HashMap Text AdmissionRule
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PolicyClusterAdmissionRules' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcarAddtional'
policyClusterAdmissionRules
    :: HashMap Text AdmissionRule -- ^ 'pcarAddtional'
    -> PolicyClusterAdmissionRules
policyClusterAdmissionRules pPcarAddtional_ =
  PolicyClusterAdmissionRules' {_pcarAddtional = _Coerce # pPcarAddtional_}


pcarAddtional :: Lens' PolicyClusterAdmissionRules (HashMap Text AdmissionRule)
pcarAddtional
  = lens _pcarAddtional
      (\ s a -> s{_pcarAddtional = a})
      . _Coerce

instance FromJSON PolicyClusterAdmissionRules where
        parseJSON
          = withObject "PolicyClusterAdmissionRules"
              (\ o ->
                 PolicyClusterAdmissionRules' <$> (parseJSONObject o))

instance ToJSON PolicyClusterAdmissionRules where
        toJSON = toJSON . _pcarAddtional

-- | An attestor that attests to container image artifacts. An existing
-- attestor cannot be modified except where indicated.
--
-- /See:/ 'attestor' smart constructor.
data Attestor =
  Attestor'
    { _aUpdateTime :: !(Maybe DateTime')
    , _aName :: !(Maybe Text)
    , _aUserOwnedGrafeasNote :: !(Maybe UserOwnedGrafeasNote)
    , _aDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Attestor' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aUpdateTime'
--
-- * 'aName'
--
-- * 'aUserOwnedGrafeasNote'
--
-- * 'aDescription'
attestor
    :: Attestor
attestor =
  Attestor'
    { _aUpdateTime = Nothing
    , _aName = Nothing
    , _aUserOwnedGrafeasNote = Nothing
    , _aDescription = Nothing
    }


-- | Output only. Time when the attestor was last updated.
aUpdateTime :: Lens' Attestor (Maybe UTCTime)
aUpdateTime
  = lens _aUpdateTime (\ s a -> s{_aUpdateTime = a}) .
      mapping _DateTime

-- | Required. The resource name, in the format:
-- \`projects\/*\/attestors\/*\`. This field may not be updated.
aName :: Lens' Attestor (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | This specifies how an attestation will be read, and how it will be used
-- during policy enforcement.
aUserOwnedGrafeasNote :: Lens' Attestor (Maybe UserOwnedGrafeasNote)
aUserOwnedGrafeasNote
  = lens _aUserOwnedGrafeasNote
      (\ s a -> s{_aUserOwnedGrafeasNote = a})

-- | Optional. A descriptive comment. This field may be updated. The field
-- may be displayed in chooser dialogs.
aDescription :: Lens' Attestor (Maybe Text)
aDescription
  = lens _aDescription (\ s a -> s{_aDescription = a})

instance FromJSON Attestor where
        parseJSON
          = withObject "Attestor"
              (\ o ->
                 Attestor' <$>
                   (o .:? "updateTime") <*> (o .:? "name") <*>
                     (o .:? "userOwnedGrafeasNote")
                     <*> (o .:? "description"))

instance ToJSON Attestor where
        toJSON Attestor'{..}
          = object
              (catMaybes
                 [("updateTime" .=) <$> _aUpdateTime,
                  ("name" .=) <$> _aName,
                  ("userOwnedGrafeasNote" .=) <$>
                    _aUserOwnedGrafeasNote,
                  ("description" .=) <$> _aDescription])

-- | Occurrence that represents a single \"attestation\". The authenticity of
-- an attestation can be verified using the attached signature. If the
-- verifier trusts the public key of the signer, then verifying the
-- signature is sufficient to establish trust. In this circumstance, the
-- authority to which this attestation is attached is primarily useful for
-- lookup (how to find this attestation if you already know the authority
-- and artifact to be verified) and intent (for which authority this
-- attestation was intended to sign.
--
-- /See:/ 'attestationOccurrence' smart constructor.
data AttestationOccurrence =
  AttestationOccurrence'
    { _aoSerializedPayload :: !(Maybe Bytes)
    , _aoJwts :: !(Maybe [Jwt])
    , _aoSignatures :: !(Maybe [Signature])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AttestationOccurrence' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aoSerializedPayload'
--
-- * 'aoJwts'
--
-- * 'aoSignatures'
attestationOccurrence
    :: AttestationOccurrence
attestationOccurrence =
  AttestationOccurrence'
    {_aoSerializedPayload = Nothing, _aoJwts = Nothing, _aoSignatures = Nothing}


-- | Required. The serialized payload that is verified by one or more
-- \`signatures\`.
aoSerializedPayload :: Lens' AttestationOccurrence (Maybe ByteString)
aoSerializedPayload
  = lens _aoSerializedPayload
      (\ s a -> s{_aoSerializedPayload = a})
      . mapping _Bytes

-- | One or more JWTs encoding a self-contained attestation. Each JWT encodes
-- the payload that it verifies within the JWT itself. Verifier
-- implementation SHOULD ignore the \`serialized_payload\` field when
-- verifying these JWTs. If only JWTs are present on this
-- AttestationOccurrence, then the \`serialized_payload\` SHOULD be left
-- empty. Each JWT SHOULD encode a claim specific to the \`resource_uri\`
-- of this Occurrence, but this is not validated by Grafeas metadata API
-- implementations. The JWT itself is opaque to Grafeas.
aoJwts :: Lens' AttestationOccurrence [Jwt]
aoJwts
  = lens _aoJwts (\ s a -> s{_aoJwts = a}) . _Default .
      _Coerce

-- | One or more signatures over \`serialized_payload\`. Verifier
-- implementations should consider this attestation message verified if at
-- least one \`signature\` verifies \`serialized_payload\`. See
-- \`Signature\` in common.proto for more details on signature structure
-- and verification.
aoSignatures :: Lens' AttestationOccurrence [Signature]
aoSignatures
  = lens _aoSignatures (\ s a -> s{_aoSignatures = a})
      . _Default
      . _Coerce

instance FromJSON AttestationOccurrence where
        parseJSON
          = withObject "AttestationOccurrence"
              (\ o ->
                 AttestationOccurrence' <$>
                   (o .:? "serializedPayload") <*>
                     (o .:? "jwts" .!= mempty)
                     <*> (o .:? "signatures" .!= mempty))

instance ToJSON AttestationOccurrence where
        toJSON AttestationOccurrence'{..}
          = object
              (catMaybes
                 [("serializedPayload" .=) <$> _aoSerializedPayload,
                  ("jwts" .=) <$> _aoJwts,
                  ("signatures" .=) <$> _aoSignatures])

-- | Associates \`members\` with a \`role\`.
--
-- /See:/ 'binding' smart constructor.
data Binding =
  Binding'
    { _bMembers :: !(Maybe [Text])
    , _bRole :: !(Maybe Text)
    , _bCondition :: !(Maybe Expr)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Binding' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bMembers'
--
-- * 'bRole'
--
-- * 'bCondition'
binding
    :: Binding
binding =
  Binding' {_bMembers = Nothing, _bRole = Nothing, _bCondition = Nothing}


-- | Specifies the identities requesting access for a Cloud Platform
-- resource. \`members\` can have the following values: * \`allUsers\`: A
-- special identifier that represents anyone who is on the internet; with
-- or without a Google account. * \`allAuthenticatedUsers\`: A special
-- identifier that represents anyone who is authenticated with a Google
-- account or a service account. * \`user:{emailid}\`: An email address
-- that represents a specific Google account. For example,
-- \`alice\'example.com\` . * \`serviceAccount:{emailid}\`: An email
-- address that represents a service account. For example,
-- \`my-other-app\'appspot.gserviceaccount.com\`. * \`group:{emailid}\`: An
-- email address that represents a Google group. For example,
-- \`admins\'example.com\`. * \`deleted:user:{emailid}?uid={uniqueid}\`: An
-- email address (plus unique identifier) representing a user that has been
-- recently deleted. For example,
-- \`alice\'example.com?uid=123456789012345678901\`. If the user is
-- recovered, this value reverts to \`user:{emailid}\` and the recovered
-- user retains the role in the binding. *
-- \`deleted:serviceAccount:{emailid}?uid={uniqueid}\`: An email address
-- (plus unique identifier) representing a service account that has been
-- recently deleted. For example,
-- \`my-other-app\'appspot.gserviceaccount.com?uid=123456789012345678901\`.
-- If the service account is undeleted, this value reverts to
-- \`serviceAccount:{emailid}\` and the undeleted service account retains
-- the role in the binding. * \`deleted:group:{emailid}?uid={uniqueid}\`:
-- An email address (plus unique identifier) representing a Google group
-- that has been recently deleted. For example,
-- \`admins\'example.com?uid=123456789012345678901\`. If the group is
-- recovered, this value reverts to \`group:{emailid}\` and the recovered
-- group retains the role in the binding. * \`domain:{domain}\`: The G
-- Suite domain (primary) that represents all the users of that domain. For
-- example, \`google.com\` or \`example.com\`.
bMembers :: Lens' Binding [Text]
bMembers
  = lens _bMembers (\ s a -> s{_bMembers = a}) .
      _Default
      . _Coerce

-- | Role that is assigned to \`members\`. For example, \`roles\/viewer\`,
-- \`roles\/editor\`, or \`roles\/owner\`.
bRole :: Lens' Binding (Maybe Text)
bRole = lens _bRole (\ s a -> s{_bRole = a})

-- | The condition that is associated with this binding. If the condition
-- evaluates to \`true\`, then this binding applies to the current request.
-- If the condition evaluates to \`false\`, then this binding does not
-- apply to the current request. However, a different role binding might
-- grant the same role to one or more of the members in this binding. To
-- learn which resources support conditions in their IAM policies, see the
-- [IAM
-- documentation](https:\/\/cloud.google.com\/iam\/help\/conditions\/resource-policies).
bCondition :: Lens' Binding (Maybe Expr)
bCondition
  = lens _bCondition (\ s a -> s{_bCondition = a})

instance FromJSON Binding where
        parseJSON
          = withObject "Binding"
              (\ o ->
                 Binding' <$>
                   (o .:? "members" .!= mempty) <*> (o .:? "role") <*>
                     (o .:? "condition"))

instance ToJSON Binding where
        toJSON Binding'{..}
          = object
              (catMaybes
                 [("members" .=) <$> _bMembers,
                  ("role" .=) <$> _bRole,
                  ("condition" .=) <$> _bCondition])
